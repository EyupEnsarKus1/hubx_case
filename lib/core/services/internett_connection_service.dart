import 'dart:async';
import 'dart:io';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'navigation_service.dart';

@singleton
class InternetCheckService extends ChangeNotifier {
  bool _isOnline = true;
  bool get isOnline => _isOnline;
  OverlayEntry? _overlayEntry;
  bool _isOverlayQueued = false;
  Timer? _queueTimer;

  final Connectivity _connectivity = Connectivity();
  Timer? _timer;
  StreamSubscription<List<ConnectivityResult>>? _connectivitySubscription;

  InternetCheckService() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _initConnectivity();
      _startMonitoring();
    });
  }

  Future<void> _initConnectivity() async {
    try {
      final results = await _connectivity.checkConnectivity();
      _updateConnectionStatus(results);
    } catch (_) {
      _isOnline = false;
      _queueShowNoInternetOverlay();
      notifyListeners();
    }
  }

  void _startMonitoring() {
    _connectivitySubscription = _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
    _timer = Timer.periodic(const Duration(seconds: 30), (_) => _checkActiveConnection());
  }

  Future<void> _updateConnectionStatus(List<ConnectivityResult> results) async {
    if (results.isEmpty || results.every((result) => result == ConnectivityResult.none)) {
      _isOnline = false;
      _queueShowNoInternetOverlay();
      notifyListeners();
    } else {
      await _checkActiveConnection();
    }
  }

  Future<void> _checkActiveConnection() async {
    try {
      final List<InternetAddress> result = await InternetAddress.lookup('google.com').timeout(const Duration(seconds: 5));

      final bool wasOnline = _isOnline;
      _isOnline = result.isNotEmpty && result[0].rawAddress.isNotEmpty;

      if (wasOnline != _isOnline) {
        if (!_isOnline) {
          _queueShowNoInternetOverlay();
        } else {
          _safeRemoveOverlay();
        }
        notifyListeners();
      }
    } on SocketException catch (_) {
      if (_isOnline) {
        _isOnline = false;
        _queueShowNoInternetOverlay();
        notifyListeners();
      }
    } on TimeoutException catch (_) {
      if (_isOnline) {
        _isOnline = false;
        _queueShowNoInternetOverlay();
        notifyListeners();
      }
    }
  }

  void _queueShowNoInternetOverlay() {
    if (_isOverlayQueued) return;
    _isOverlayQueued = true;

    _queueTimer?.cancel();
    _queueTimer = Timer.periodic(const Duration(milliseconds: 500), (timer) {
      if (!_isOverlayQueued) {
        timer.cancel();
        return;
      }

      if (rootNavigatorKey.currentContext != null) {
        final context = rootNavigatorKey.currentContext!;
        if (context.mounted && _overlayEntry == null) {
          try {
            _showNoInternetOverlay(context);
            _isOverlayQueued = false;
            timer.cancel();
          } catch (e) {
            debugPrint('Overlay gösterme denemesi başarısız: $e');
          }
        }
      }
    });
  }

  void _showNoInternetOverlay(BuildContext context) {
    if (_overlayEntry != null) return;

    try {
      _overlayEntry = OverlayEntry(
        builder: (context) => Material(
          color: Colors.black.withOpacity(0.9),
          child: WillPopScope(
            onWillPop: () async => false,
            child: Center(
              child: Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.wifi_off, size: 80, color: Colors.white),
                    const SizedBox(height: 16),
                    const Text(
                      "İnternet Bağlantısı Yok",
                      style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      "Lütfen internet bağlantınızı kontrol edin.",
                      style: TextStyle(color: Colors.white70, fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 24),
                    ElevatedButton(
                      onPressed: () async {
                        await _checkActiveConnection();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                      ),
                      child: const Text("Tekrar Dene", style: TextStyle(fontSize: 16)),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );

      final overlayState = rootNavigatorKey.currentState?.overlay;
      if (overlayState != null) {
        overlayState.insert(_overlayEntry!);
      } else {
        debugPrint('Overlay bulunamadı.');
        _overlayEntry = null;
      }
    } catch (e) {
      debugPrint('Overlay oluşturma hatası: $e');
      _overlayEntry = null;
    }
  }

  void _safeRemoveOverlay() {
    _isOverlayQueued = false;
    _queueTimer?.cancel();

    if (_overlayEntry != null) {
      try {
        _overlayEntry?.remove();
      } catch (e) {
        debugPrint('Overlay kaldırma hatası: $e');
      } finally {
        _overlayEntry = null;
      }
    }
  }

  @override
  void dispose() {
    _queueTimer?.cancel();
    _timer?.cancel();
    _connectivitySubscription?.cancel();
    _safeRemoveOverlay();
    super.dispose();
  }
}

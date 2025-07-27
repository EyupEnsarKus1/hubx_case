import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnBoardService {
  static const String _keyHasSeenOnBoarding = "hasSeenOnBoarding";

  Future<bool> hasSeenOnBoarding() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_keyHasSeenOnBoarding) ?? false;
  }

  Future<void> setHasSeenOnBoarding() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_keyHasSeenOnBoarding, true);
  }
}

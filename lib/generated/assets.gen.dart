// dart format width=150

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/Roboto-Black.ttf
  String get robotoBlack => 'assets/fonts/Roboto-Black.ttf';

  /// File path: assets/fonts/Roboto-Bold.ttf
  String get robotoBold => 'assets/fonts/Roboto-Bold.ttf';

  /// File path: assets/fonts/Roboto-ExtraBold.ttf
  String get robotoExtraBold => 'assets/fonts/Roboto-ExtraBold.ttf';

  /// File path: assets/fonts/Roboto-Light.ttf
  String get robotoLight => 'assets/fonts/Roboto-Light.ttf';

  /// File path: assets/fonts/Roboto-Medium.ttf
  String get robotoMedium => 'assets/fonts/Roboto-Medium.ttf';

  /// File path: assets/fonts/Roboto-Regular.ttf
  String get robotoRegular => 'assets/fonts/Roboto-Regular.ttf';

  /// File path: assets/fonts/Roboto-SemiBold.ttf
  String get robotoSemiBold => 'assets/fonts/Roboto-SemiBold.ttf';

  /// List of all assets
  List<String> get values => [robotoBlack, robotoBold, robotoExtraBold, robotoLight, robotoMedium, robotoRegular, robotoSemiBold];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// Directory path: assets/icons/home
  $AssetsIconsHomeGen get home => const $AssetsIconsHomeGen();

  /// Directory path: assets/icons/paywall
  $AssetsIconsPaywallGen get paywall => const $AssetsIconsPaywallGen();
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// Directory path: assets/images/background
  $AssetsImagesBackgroundGen get background => const $AssetsImagesBackgroundGen();

  /// Directory path: assets/images/onboard
  $AssetsImagesOnboardGen get onboard => const $AssetsImagesOnboardGen();

  /// Directory path: assets/images/paywall
  $AssetsImagesPaywallGen get paywall => const $AssetsImagesPaywallGen();
}

class $AssetsIconsHomeGen {
  const $AssetsIconsHomeGen();

  /// File path: assets/icons/home/diagnose_icon.svg
  String get diagnoseIcon => 'assets/icons/home/diagnose_icon.svg';

  /// File path: assets/icons/home/home_icon.svg
  String get homeIcon => 'assets/icons/home/home_icon.svg';

  /// File path: assets/icons/home/my_garden_icon.svg
  String get myGardenIcon => 'assets/icons/home/my_garden_icon.svg';

  /// File path: assets/icons/home/premium_badge.png
  AssetGenImage get premiumBadge => const AssetGenImage('assets/icons/home/premium_badge.png');

  /// File path: assets/icons/home/profile_icon.svg
  String get profileIcon => 'assets/icons/home/profile_icon.svg';

  /// File path: assets/icons/home/scan_icon.svg
  String get scanIcon => 'assets/icons/home/scan_icon.svg';

  /// File path: assets/icons/home/search_icon.svg
  String get searchIcon => 'assets/icons/home/search_icon.svg';

  /// List of all assets
  List<dynamic> get values => [diagnoseIcon, homeIcon, myGardenIcon, premiumBadge, profileIcon, scanIcon, searchIcon];
}

class $AssetsIconsPaywallGen {
  const $AssetsIconsPaywallGen();

  /// File path: assets/icons/paywall/close_icon.svg
  String get closeIcon => 'assets/icons/paywall/close_icon.svg';

  /// File path: assets/icons/paywall/detailed.svg
  String get detailed => 'assets/icons/paywall/detailed.svg';

  /// File path: assets/icons/paywall/faster.svg
  String get faster => 'assets/icons/paywall/faster.svg';

  /// File path: assets/icons/paywall/unlimited.svg
  String get unlimited => 'assets/icons/paywall/unlimited.svg';

  /// List of all assets
  List<String> get values => [closeIcon, detailed, faster, unlimited];
}

class $AssetsImagesBackgroundGen {
  const $AssetsImagesBackgroundGen();

  /// File path: assets/images/background/home_header.png
  AssetGenImage get homeHeader => const AssetGenImage('assets/images/background/home_header.png');

  /// File path: assets/images/background/onboard_screen_one_bg.png
  AssetGenImage get onboardScreenOneBg => const AssetGenImage('assets/images/background/onboard_screen_one_bg.png');

  /// List of all assets
  List<AssetGenImage> get values => [homeHeader, onboardScreenOneBg];
}

class $AssetsImagesOnboardGen {
  const $AssetsImagesOnboardGen();

  /// File path: assets/images/onboard/onboard_image_one.png
  AssetGenImage get onboardImageOne => const AssetGenImage('assets/images/onboard/onboard_image_one.png');

  /// File path: assets/images/onboard/onboard_image_three.png
  AssetGenImage get onboardImageThree => const AssetGenImage('assets/images/onboard/onboard_image_three.png');

  /// File path: assets/images/onboard/onboard_image_two.png
  AssetGenImage get onboardImageTwo => const AssetGenImage('assets/images/onboard/onboard_image_two.png');

  /// File path: assets/images/onboard/onboard_title_brush.png
  AssetGenImage get onboardTitleBrush => const AssetGenImage('assets/images/onboard/onboard_title_brush.png');

  /// List of all assets
  List<AssetGenImage> get values => [onboardImageOne, onboardImageThree, onboardImageTwo, onboardTitleBrush];
}

class $AssetsImagesPaywallGen {
  const $AssetsImagesPaywallGen();

  /// File path: assets/images/paywall/paywall_header_image.png
  AssetGenImage get paywallHeaderImage => const AssetGenImage('assets/images/paywall/paywall_header_image.png');

  /// File path: assets/images/paywall/paywall_image.png
  AssetGenImage get paywallImage => const AssetGenImage('assets/images/paywall/paywall_image.png');

  /// List of all assets
  List<AssetGenImage> get values => [paywallHeaderImage, paywallImage];
}

class Assets {
  const Assets._();

  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName, {this.size, this.flavors = const {}, this.animation});

  final String _assetName;

  final Size? size;
  final Set<String> flavors;
  final AssetGenImageAnimation? animation;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class AssetGenImageAnimation {
  const AssetGenImageAnimation({required this.isAnimation, required this.duration, required this.frames});

  final bool isAnimation;
  final Duration duration;
  final int frames;
}

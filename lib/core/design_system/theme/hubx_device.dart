import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'dart:math' as math;

enum DeviceType {
  phone,
  tablet,
}

extension DeviceTypeExtension on DeviceType {
  Size get designSize {
    switch (this) {
      case DeviceType.phone:
        return const Size(393, 852);
      case DeviceType.tablet:
        return const Size(768, 1024);
    }
  }

  String get name {
    switch (this) {
      case DeviceType.phone:
        return 'Phone';
      case DeviceType.tablet:
        return 'Tablet';
    }
  }
}

class HubxDevice {
  HubxDevice._();

  static DeviceType getDeviceTypeWithoutContext() {
    final window = PlatformDispatcher.instance.views.first;
    final width = window.physicalSize.width / window.devicePixelRatio;
    final height = window.physicalSize.height / window.devicePixelRatio;

    final shortestSide = math.min(width, height);
    const tabletShortestSide = 600.0;

    print('Shortest Side: $shortestSide');

    if (shortestSide >= tabletShortestSide) {
      print('Device Type: Tablet');
      return DeviceType.tablet;
    } else {
      print('Device Type: Phone');
      return DeviceType.phone;
    }
  }

  static Size getDesignSizeWithoutContext() {
    final deviceType = getDeviceTypeWithoutContext();
    final designSize = deviceType.designSize;

    return designSize;
  }

  static DeviceType getDeviceType(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final width = mediaQuery.size.width;
    final height = mediaQuery.size.height;

    final shortestSide = math.min(width, height);
    const tabletShortestSide = 600.0;

    if (shortestSide >= tabletShortestSide) {
      return DeviceType.tablet;
    } else {
      return DeviceType.phone;
    }
  }

  static Size getDesignSize(BuildContext context) {
    return getDeviceType(context).designSize;
  }

  static bool isTablet(BuildContext context) {
    return getDeviceType(context) == DeviceType.tablet;
  }

  static bool isPhone(BuildContext context) {
    return getDeviceType(context) == DeviceType.phone;
  }
}

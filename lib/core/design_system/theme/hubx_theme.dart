import 'package:flutter/material.dart';

import 'hubx_colors.dart';
import 'hubx_fonts.dart';
import 'hubx_sizes.dart';

class AppTheme {
  AppTheme._();

  static TextTheme _buildTextTheme(Color textColor) {
    return TextTheme(
      displayLarge: TextStyle(
        fontFamily: HubxFonts.primaryFont,
        fontWeight: HubxFontWeights.bold,
        fontSize: HubxSizes.size48,
        color: textColor,
      ),
      displayMedium: TextStyle(
        fontFamily: HubxFonts.primaryFont,
        fontWeight: HubxFontWeights.semiBold,
        fontSize: HubxSizes.size36,
        color: textColor,
      ),
      displaySmall: TextStyle(
        fontFamily: HubxFonts.primaryFont,
        fontWeight: HubxFontWeights.semiBold,
        fontSize: HubxSizes.size28,
        color: textColor,
      ),
      headlineLarge: TextStyle(
        fontFamily: HubxFonts.primaryFont,
        fontWeight: HubxFontWeights.medium,
        fontSize: HubxSizes.size24,
        color: textColor,
      ),
      headlineMedium: TextStyle(
        fontFamily: HubxFonts.primaryFont,
        fontWeight: HubxFontWeights.medium,
        fontSize: HubxSizes.size20,
        color: textColor,
      ),
      headlineSmall: TextStyle(
        fontFamily: HubxFonts.primaryFont,
        fontWeight: HubxFontWeights.medium,
        fontSize: HubxSizes.size18,
        color: textColor,
      ),
      titleLarge: TextStyle(
        fontFamily: HubxFonts.primaryFont,
        fontWeight: HubxFontWeights.semiBold,
        fontSize: HubxSizes.size18,
        color: textColor,
      ),
      titleMedium: TextStyle(
        fontFamily: HubxFonts.primaryFont,
        fontWeight: HubxFontWeights.medium,
        fontSize: HubxSizes.size16,
        color: textColor,
      ),
      titleSmall: TextStyle(
        fontFamily: HubxFonts.primaryFont,
        fontWeight: HubxFontWeights.medium,
        fontSize: HubxSizes.size14,
        color: textColor,
      ),
      bodyLarge: TextStyle(
        fontFamily: HubxFonts.primaryFont,
        fontWeight: HubxFontWeights.regular,
        fontSize: HubxSizes.size16,
        color: textColor,
      ),
      bodyMedium: TextStyle(
        fontFamily: HubxFonts.primaryFont,
        fontWeight: HubxFontWeights.regular,
        fontSize: HubxSizes.size14,
        color: textColor,
      ),
      bodySmall: TextStyle(
        fontFamily: HubxFonts.primaryFont,
        fontWeight: HubxFontWeights.light,
        fontSize: HubxSizes.size12,
        color: textColor,
      ),
      labelLarge: TextStyle(
        fontFamily: HubxFonts.primaryFont,
        fontWeight: HubxFontWeights.medium,
        fontSize: HubxSizes.size14,
        color: textColor,
      ),
      labelMedium: TextStyle(
        fontFamily: HubxFonts.primaryFont,
        fontWeight: HubxFontWeights.regular,
        fontSize: HubxSizes.size12,
        color: textColor,
      ),
      labelSmall: TextStyle(
        fontFamily: HubxFonts.primaryFont,
        fontWeight: HubxFontWeights.light,
        fontSize: HubxSizes.size10,
        color: textColor,
      ),
    );
  }

  static ThemeData get light => ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    scaffoldBackgroundColor: HubxColors.scaffoldBackground,
    primaryColor: HubxColors.primary,
    colorScheme: const ColorScheme.light(primary: HubxColors.primary, background: HubxColors.scaffoldBackground),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      titleTextStyle: TextStyle(
        fontFamily: HubxFonts.primaryFont,
        fontWeight: HubxFontWeights.semiBold,
        fontSize: HubxSizes.size20,
        color: HubxColors.mainText,
      ),
      centerTitle: true,
      iconTheme: IconThemeData(color: HubxColors.mainText),
    ),
    iconTheme: const IconThemeData(color: HubxColors.primary),
    textTheme: _buildTextTheme(HubxColors.white),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: HubxColors.primary,
        foregroundColor: HubxColors.white,
        textStyle: TextStyle(fontFamily: HubxFonts.primaryFont, fontWeight: HubxFontWeights.medium, fontSize: HubxSizes.size16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(HubxSizes.size8)),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: HubxColors.primary,
        side: const BorderSide(color: HubxColors.primary),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(HubxSizes.size8)),
      ),
    ),
  );

  static ThemeData get dark => ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: HubxColors.black,
    primaryColor: HubxColors.primary,
    colorScheme: const ColorScheme.dark(primary: HubxColors.primary, background: HubxColors.black),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(color: HubxColors.white),
    ),
    iconTheme: const IconThemeData(color: HubxColors.primary),
    textTheme: _buildTextTheme(HubxColors.white),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: HubxColors.primary,
        foregroundColor: HubxColors.white,
        textStyle: TextStyle(fontFamily: HubxFonts.primaryFont, fontWeight: HubxFontWeights.medium, fontSize: HubxSizes.size16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(HubxSizes.size8)),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: HubxColors.primary,
        side: const BorderSide(color: HubxColors.primary),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(HubxSizes.size8)),
      ),
    ),
  );
}

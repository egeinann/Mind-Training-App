import 'package:flutter/material.dart';
import 'package:mind_training_app/utils/colors.dart';
import 'package:mind_training_app/utils/strings.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ThemeClass {
  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: LightColors.background,
    canvasColor: LightColors.background2,
    primaryColor: LightColors.primary,
    cardColor: LightColors.card,
    focusColor: LightColors.focus,
    iconTheme: IconThemeData(color: LightColors.textAndIcon),
    appBarTheme: AppBarTheme(
      backgroundColor: LightColors.background,
      foregroundColor: LightColors.textAndIcon,
      elevation: 0,
      scrolledUnderElevation: 0,
      iconTheme: IconThemeData(color: LightColors.textAndIcon),
    ),
    textTheme: TextTheme(
      // *** NEGATIVE TEXT STYLES ***
      bodyLarge: TextStyle(
        color: LightColors.textAndIcon,
        fontSize: 22.sp,
        fontWeight: FontWeight.bold,
        fontFamily: AppStrings.fontRoboto,
      ),
      bodyMedium: TextStyle(
        color: LightColors.textAndIcon,
        fontSize: 20.sp,
        fontWeight: FontWeight.bold,
        fontFamily: AppStrings.fontRoboto,
      ),
      bodySmall: TextStyle(
        color: LightColors.textAndIcon,
        fontSize: 18.sp,
        fontWeight: FontWeight.bold,
        fontFamily: AppStrings.fontRoboto,
      ),
      // *** SAME TEXT STYLES ***
      headlineLarge: TextStyle(
        color: LightColors.background,
        fontSize: 22.sp,
        fontWeight: FontWeight.bold,
        fontFamily: AppStrings.fontRoboto,
      ),
      headlineMedium: TextStyle(
        color: LightColors.background,
        fontSize: 20.sp,
        fontWeight: FontWeight.bold,
        fontFamily: AppStrings.fontRoboto,
      ),
      headlineSmall: TextStyle(
        color: LightColors.background,
        fontSize: 18.sp,
        fontWeight: FontWeight.bold,
        fontFamily: AppStrings.fontRoboto,
      ),
      // *** TITLE TEXT STYLES ***
      titleLarge: TextStyle(
        color: LightColors.textAndIcon2,
        fontSize: 26.sp,
        fontWeight: FontWeight.bold,
        fontFamily: AppStrings.fontRoboto,
      ),
      titleMedium: TextStyle(
        color: LightColors.textAndIcon2,
        fontSize: 24.sp,
        fontWeight: FontWeight.bold,
        fontFamily: AppStrings.fontRoboto,
      ),
      titleSmall: TextStyle(
        color: LightColors.textAndIcon2,
        fontSize: 22.sp,
        fontWeight: FontWeight.bold,
        fontFamily: AppStrings.fontRoboto,
      ),
      // *** JERSEY TEXT STYLES ***
      labelLarge: TextStyle(
        color: LightColors.textAndIcon2,
        fontSize: 26.sp,
        fontWeight: FontWeight.bold,
        fontFamily: AppStrings.fontJersey,
      ),
      labelMedium: TextStyle(
        color: LightColors.textAndIcon2,
        fontSize: 24.sp,
        fontWeight: FontWeight.bold,
        fontFamily: AppStrings.fontJersey,
      ),
      labelSmall: TextStyle(
        color: LightColors.textAndIcon2,
        fontSize: 22.sp,
        fontWeight: FontWeight.bold,
        fontFamily: AppStrings.fontJersey,
      ),
      // *** DISPLAY TEXT STYLES ***
      displayLarge: TextStyle(
        color: LightColors.textAndIcon2,
        fontSize: 34.sp,
        fontWeight: FontWeight.bold,
        fontFamily: AppStrings.fontJersey,
      ),
      displayMedium: TextStyle(
        color: LightColors.textAndIcon2,
        fontSize: 32.sp,
        fontWeight: FontWeight.bold,
        fontFamily: AppStrings.fontJersey,
      ),
      displaySmall: TextStyle(
        color: LightColors.textAndIcon2,
        fontSize: 30.sp,
        fontWeight: FontWeight.bold,
        fontFamily: AppStrings.fontJersey,
      ),
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: DarkColors.background,
    canvasColor: DarkColors.background2,
    primaryColor: DarkColors.primary,
    cardColor: DarkColors.card,
    focusColor: DarkColors.focus,
    appBarTheme: AppBarTheme(
      backgroundColor: DarkColors.background,
      foregroundColor: DarkColors.textAndIcon,
      elevation: 0,
      scrolledUnderElevation: 0,
      iconTheme: IconThemeData(color: DarkColors.textAndIcon),
    ),
    iconTheme: IconThemeData(color: DarkColors.textAndIcon),
    textTheme: TextTheme(
      // *** NEGATIVE TEXT STYLES ***
      bodyLarge: TextStyle(
        color: DarkColors.textAndIcon,
        fontSize: 22.sp,
        fontWeight: FontWeight.bold,
        fontFamily: AppStrings.fontRoboto,
      ),
      bodyMedium: TextStyle(
        color: DarkColors.textAndIcon,
        fontSize: 20.sp,
        fontWeight: FontWeight.bold,
        fontFamily: AppStrings.fontRoboto,
      ),
      bodySmall: TextStyle(
        color: DarkColors.textAndIcon,
        fontSize: 18.sp,
        fontWeight: FontWeight.bold,
        fontFamily: AppStrings.fontRoboto,
      ),
      // *** SAME TEXT STYLES ***
      headlineLarge: TextStyle(
        color: DarkColors.background,
        fontSize: 22.sp,
        fontWeight: FontWeight.bold,
        fontFamily: AppStrings.fontRoboto,
      ),
      headlineMedium: TextStyle(
        color: DarkColors.background,
        fontSize: 20.sp,
        fontWeight: FontWeight.bold,
        fontFamily: AppStrings.fontRoboto,
      ),
      headlineSmall: TextStyle(
        color: DarkColors.background,
        fontSize: 18.sp,
        fontWeight: FontWeight.bold,
        fontFamily: AppStrings.fontRoboto,
      ),
      // *** TITLE TEXT STYLES ***
      titleLarge: TextStyle(
        color: DarkColors.textAndIcon2,
        fontSize: 26.sp,
        fontWeight: FontWeight.bold,
        fontFamily: AppStrings.fontRoboto,
      ),
      titleMedium: TextStyle(
        color: DarkColors.textAndIcon2,
        fontSize: 24.sp,
        fontWeight: FontWeight.bold,
        fontFamily: AppStrings.fontRoboto,
      ),
      titleSmall: TextStyle(
        color: DarkColors.textAndIcon2,
        fontSize: 22.sp,
        fontWeight: FontWeight.bold,
        fontFamily: AppStrings.fontRoboto,
      ),
      // *** JERSEY TEXT STYLES ***
      labelLarge: TextStyle(
        color: DarkColors.textAndIcon2,
        fontSize: 26.sp,
        fontWeight: FontWeight.bold,
        fontFamily: AppStrings.fontJersey,
      ),
      labelMedium: TextStyle(
        color: DarkColors.textAndIcon2,
        fontSize: 24.sp,
        fontWeight: FontWeight.bold,
        fontFamily: AppStrings.fontJersey,
      ),
      labelSmall: TextStyle(
        color: DarkColors.textAndIcon2,
        fontSize: 22.sp,
        fontWeight: FontWeight.bold,
        fontFamily: AppStrings.fontJersey,
      ),
      // *** DISPLAY TEXT STYLES ***
      displayLarge: TextStyle(
        color: DarkColors.textAndIcon2,
        fontSize: 34.sp,
        fontWeight: FontWeight.bold,
        fontFamily: AppStrings.fontJersey,
      ),
      displayMedium: TextStyle(
        color: DarkColors.textAndIcon2,
        fontSize: 32.sp,
        fontWeight: FontWeight.bold,
        fontFamily: AppStrings.fontJersey,
      ),
      displaySmall: TextStyle(
        color: DarkColors.textAndIcon2,
        fontSize: 30.sp,
        fontWeight: FontWeight.bold,
        fontFamily: AppStrings.fontJersey,
      ),
    ),
  );
}

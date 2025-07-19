import 'package:flutter/material.dart';
import 'package:mind_training_app/utils/colors.dart';
import 'package:mind_training_app/utils/strings.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ThemeClass {
  static final ThemeData appTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.background,
    canvasColor: AppColors.background2,
    primaryColor: AppColors.primary,
    cardColor: AppColors.card,
    focusColor: AppColors.focus,
    shadowColor: AppColors.negative,
    iconTheme: IconThemeData(color: AppColors.textAndIcon),
    textTheme: TextTheme(
      // NEGATIVE TEXT STYLES
      bodyLarge: TextStyle(
        color: AppColors.textAndIcon,
        fontSize: 22.sp,
        fontWeight: FontWeight.bold,
        fontFamily: AppStrings.fontRoboto,
      ),
      bodyMedium: TextStyle(
        color: AppColors.textAndIcon,
        fontSize: 20.sp,
        fontWeight: FontWeight.bold,
        fontFamily: AppStrings.fontRoboto,
      ),
      bodySmall: TextStyle(
        color: AppColors.textAndIcon,
        fontSize: 18.sp,
        fontWeight: FontWeight.bold,
        fontFamily: AppStrings.fontRoboto,
      ),

      // SAME TEXT STYLES
      headlineLarge: TextStyle(
        color: AppColors.background,
        fontSize: 22.sp,
        fontWeight: FontWeight.bold,
        fontFamily: AppStrings.fontRoboto,
      ),
      headlineMedium: TextStyle(
        color: AppColors.background,
        fontSize: 20.sp,
        fontWeight: FontWeight.bold,
        fontFamily: AppStrings.fontRoboto,
      ),
      headlineSmall: TextStyle(
        color: AppColors.background,
        fontSize: 18.sp,
        fontWeight: FontWeight.bold,
        fontFamily: AppStrings.fontRoboto,
      ),

      // TITLE TEXT STYLES
      titleLarge: TextStyle(
        color: AppColors.textAndIcon2,
        fontSize: 26.sp,
        fontWeight: FontWeight.bold,
        fontFamily: AppStrings.fontRoboto,
      ),
      titleMedium: TextStyle(
        color: AppColors.textAndIcon2,
        fontSize: 24.sp,
        fontWeight: FontWeight.bold,
        fontFamily: AppStrings.fontRoboto,
      ),
      titleSmall: TextStyle(
        color: AppColors.textAndIcon2,
        fontSize: 22.sp,
        fontWeight: FontWeight.bold,
        fontFamily: AppStrings.fontRoboto,
      ),

      // JERSEY TEXT STYLES
      labelLarge: TextStyle(
        color: AppColors.textAndIcon2,
        fontSize: 26.sp,
        fontWeight: FontWeight.bold,
        fontFamily: AppStrings.fontJersey,
      ),
      labelMedium: TextStyle(
        color: AppColors.textAndIcon2,
        fontSize: 24.sp,
        fontWeight: FontWeight.bold,
        fontFamily: AppStrings.fontJersey,
      ),
      labelSmall: TextStyle(
        color: AppColors.textAndIcon2,
        fontSize: 22.sp,
        fontWeight: FontWeight.bold,
        fontFamily: AppStrings.fontJersey,
      ),

      // DISPLAY TEXT STYLES
      displayLarge: TextStyle(
        color: AppColors.textAndIcon2,
        fontSize: 34.sp,
        fontWeight: FontWeight.bold,
        fontFamily: AppStrings.fontJersey,
      ),
      displayMedium: TextStyle(
        color: AppColors.textAndIcon2,
        fontSize: 32.sp,
        fontWeight: FontWeight.bold,
        fontFamily: AppStrings.fontJersey,
      ),
      displaySmall: TextStyle(
        color: AppColors.textAndIcon2,
        fontSize: 30.sp,
        fontWeight: FontWeight.bold,
        fontFamily: AppStrings.fontJersey,
      ),
    ),
  );
}

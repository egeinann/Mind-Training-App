import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget customBlurContainer({
  required Widget child,
  double borderRadius = 20,
  Color? backgroundColor,
  double? widht,
  double? height,
  double x = 3,
  double y = 3,
}) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(borderRadius),
    child: SizedBox(
    
      width: widht,
      height: height,
      child: Stack(
        children: [
          Positioned.fill(
            child: Container(
              color: backgroundColor?.withValues(alpha:0.4) ??
                  Get.theme.scaffoldBackgroundColor.withValues(alpha:0.4),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: x,
                  sigmaY: y,
                ),
                child: const SizedBox.expand(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
            child: child,
          ),
        ],
      ),
    ),
  );
}
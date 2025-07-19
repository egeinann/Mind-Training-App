import 'package:flutter/material.dart';

double lowValue = 5;
double mediumValue = 10;
double largeValue = 20;

extension PaddingExtensionsAll on BuildContext {
  EdgeInsets get paddingLow => EdgeInsets.all(lowValue);
  EdgeInsets get paddingMedium => EdgeInsets.all(mediumValue);
  EdgeInsets get paddingLarge => EdgeInsets.all(largeValue);
}
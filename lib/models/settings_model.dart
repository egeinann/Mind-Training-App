import 'package:flutter/material.dart';

class SettingsModel {
  final IconData leading;
  final String title;
  final String? description;
  final Widget action;
  final VoidCallback onTap;

  SettingsModel(
 {
    required this.leading,
    required this.title,
    this.description,
    required this.action,
    required this.onTap,
  });
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppButton extends StatefulWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const AppButton({
    super.key,
    required this.icon,
    this.onPressed,
  });

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> with SingleTickerProviderStateMixin {
  double _scale = 1.0;

  void _animateScale(double target) {
    // Rebuild scale value
    setState(() {
      _scale = target;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerDown: (_) => _animateScale(0.9),
      onPointerUp: (_) {
        _animateScale(1.0);
        widget.onPressed?.call();
      },
      onPointerCancel: (_) => _animateScale(1.0),
      child: AnimatedScale(
        scale: _scale,
        duration: const Duration(milliseconds: 100),
        curve: Curves.easeOut,
        child: ClipOval(
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Get.theme.cardColor.withOpacity(0.8),
            ),
            child: Icon(
              widget.icon,
              color: Get.theme.shadowColor,
              size: 30,
            ),
          ),
        ),
      ),
    );
  }
}

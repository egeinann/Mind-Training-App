import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomContainer extends StatefulWidget {
  final String image;
  final Color backgroundColor;
  final Color shadowColor;
  final String title; // Example title, can be customized

  const CustomContainer({
    super.key,
    required this.image,
    required this.backgroundColor,
    required this.shadowColor,
    required this.title,
  });

  @override
  State<CustomContainer> createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  double _scale = 1.0;

  void _onTapDown(TapDownDetails details) {
    setState(() {
      _scale = 0.95;
    });
  }

  void _onTapUp(TapUpDetails details) {
    setState(() {
      _scale = 1.0;
    });
  }

  void _onTapCancel() {
    setState(() {
      _scale = 1.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: _onTapDown,
      onTapUp: _onTapUp,
      onTapCancel: _onTapCancel,
      child: AnimatedScale(
        scale: _scale,
        duration: const Duration(milliseconds: 50),
        curve: Curves.easeOut,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  padding: const EdgeInsets.only(top: 5),
                  height: 150,
                  width: Get.size.width * 0.5,
                  decoration: BoxDecoration(
                    color: widget.backgroundColor,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: widget.shadowColor,
                        blurRadius: 3,
                        spreadRadius: 3,
                        blurStyle: BlurStyle.solid,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Text(widget.title, style: Get.theme.textTheme.bodySmall),
                  ),
                ),
              ),
              Positioned(
                bottom: -30,
                right: -30,
                child: Image.asset(
                  widget.image,
                  height: 100,
                  width: 100,
                  fit: BoxFit.scaleDown,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

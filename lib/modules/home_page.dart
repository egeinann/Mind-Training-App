import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page", style: Get.theme.textTheme.titleSmall),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 25,
            children: [
              Text("Merhaba", style: Get.theme.textTheme.bodyLarge),
              Text("Merhaba", style: Get.theme.textTheme.bodyMedium),
              Text("Merhaba", style: Get.theme.textTheme.bodySmall),
              Text("Merhaba", style: Get.theme.textTheme.titleLarge),
              Text("Merhaba", style: Get.theme.textTheme.titleMedium),
              Text("Merhaba", style: Get.theme.textTheme.titleSmall),
              Text("Merhaba", style: Get.theme.textTheme.labelLarge),
              Text("Merhaba", style: Get.theme.textTheme.labelMedium),
              Text("Merhaba", style: Get.theme.textTheme.labelSmall),
              Text("Merhaba", style: Get.theme.textTheme.displayLarge),
              Text("Merhaba", style: Get.theme.textTheme.displayMedium),
              Text("Merhaba", style: Get.theme.textTheme.displaySmall),
              SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }

  Widget qwe(Color color) {
    return Container(
      height: 100,
      width: 200,

      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}

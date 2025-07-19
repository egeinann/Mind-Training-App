import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mind_training_app/controllers/main_controller.dart';
import 'package:mind_training_app/controllers/settings_controller.dart';
import 'package:mind_training_app/routes/pages.dart';
import 'package:mind_training_app/routes/routes.dart';
import 'package:mind_training_app/utils/themes.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  Get.put(MainController());
  Get.put(SettingsController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return GetMaterialApp(
          theme: ThemeClass.appTheme,
          debugShowCheckedModeBanner: false,
          initialRoute: Routes.mainpage,
          getPages: Pages.pages,
        );
      },
    );
  }
}

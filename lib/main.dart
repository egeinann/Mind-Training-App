import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:mind_training_app/routes/pages.dart';
import 'package:mind_training_app/routes/routes.dart';
import 'package:mind_training_app/utils/themes.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return GetMaterialApp(
          theme: ThemeClass.lightTheme,
          themeMode: ThemeMode.light,
          darkTheme: ThemeClass.darkTheme,
          debugShowCheckedModeBanner: false,
          initialRoute: Routes.homepage,
          getPages: Pages.pages,
        );
      },
    );
  }
}

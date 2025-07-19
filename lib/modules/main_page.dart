import 'package:crystal_navigation_bar/crystal_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mind_training_app/controllers/main_controller.dart';
import 'package:mind_training_app/modules/navigationPages/stats_page.dart';
import 'package:mind_training_app/modules/navigationPages/home_page.dart';
import 'package:mind_training_app/modules/navigationPages/profile_page.dart';
import 'package:mind_training_app/routes/routes.dart';
import 'package:mind_training_app/utils/icons.dart';
import 'package:mind_training_app/utils/images.dart';

class MainScreen extends GetView<MainController> {
  final List<Widget> pages = [
    const StatsPage(),
    const HomePage(),
    const ProfilePage(),
  ];

  MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      extendBody: true,
      body: Obx(() => pages[controller.navigationIndex.value]),
      bottomNavigationBar: bottomNavigationBar(context),
    );
  }

  // *** APP BAR ***
  AppBar appBar(BuildContext context) {
    return AppBar(
      title: Obx(
        () => Text(
          controller.appBarTitle.value,
          style: Get.theme.textTheme.labelLarge,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: GestureDetector(
            onTap: () {
              Get.toNamed(Routes.settingspage);
            },
            child: Icon(AppIcons.settings),
          ),
        ),
      ],
      backgroundColor: Theme.of(context).canvasColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(bottomRight: Radius.circular(30)),
      ),
    );
  }

  // *** NAVİGASYON BAR ***
  Widget bottomNavigationBar(BuildContext context) {
    return Obx(
      () => CrystalNavigationBar(
        paddingR: const EdgeInsets.all(0.1),
        marginR: EdgeInsets.symmetric(
          horizontal: Get.size.width * 0.15,
          vertical: 20,
        ),
        enablePaddingAnimation: true,
        backgroundColor: Get.theme.canvasColor.withValues(alpha: 0.5),
        currentIndex: controller.navigationIndex.value,
        onTap: (index) {
          Get.focusScope?.unfocus();
          controller.changeNavigationIndex(index);
        },
        curve: Curves.linearToEaseOut,
        enableFloatingNavBar: true,
        borderWidth: 0,
        splashColor: Get.theme.focusColor,
        indicatorColor: Colors.transparent,
        unselectedItemColor: Get.theme.focusColor.withValues(alpha: 0.8),
        selectedItemColor: Get.theme.iconTheme.color,
        items: [
          CrystalNavigationBarItem(
            icon: AppIcons.chart,
            unselectedIcon: AppIcons.chartOutline,
          ),
          CrystalNavigationBarItem(
            icon: AppIcons.home,
            unselectedIcon: AppIcons.homeOutline,
          ),
          CrystalNavigationBarItem(
            icon: AppIcons.person,
            unselectedIcon: AppIcons.personOutline,
          ),
        ],
      ),
    );
  }
}

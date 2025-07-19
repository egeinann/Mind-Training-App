import 'package:get/get_navigation/get_navigation.dart';
import 'package:mind_training_app/bindings/main_controller_binding.dart';
import 'package:mind_training_app/modules/navigationPages/stats_page.dart';
import 'package:mind_training_app/modules/main_page.dart';
import 'package:mind_training_app/modules/navigationPages/home_page.dart';
import 'package:mind_training_app/modules/navigationPages/profile_page.dart';
import 'package:mind_training_app/modules/settings_page.dart';
import 'package:mind_training_app/routes/routes.dart';

abstract class Pages {
  static final pages = [
    GetPage(
      name: Routes.mainpage,
      page: () => MainScreen(),
      binding: MainControllerBinding(),
    ),
    // *** NAV BAR ***
    GetPage(name: Routes.statspage, page: () => const StatsPage()),
    GetPage(name: Routes.HomePage, page: () => const HomePage()),
    GetPage(name: Routes.profilepage, page: () => const ProfilePage()),
    // *** APP ***
    GetPage(name: Routes.settingspage, page: () => const SettingsPage()),
  ];
}

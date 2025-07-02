
import 'package:get/get_navigation/get_navigation.dart';
import 'package:mind_training_app/modules/home_page.dart';
import 'package:mind_training_app/modules/profile_page.dart';
import 'package:mind_training_app/routes/routes.dart';

abstract class Pages {
  static final pages = [
    GetPage(
      name: Routes.homepage,
      page: () => const HomePage(),
    ),
    GetPage(
      name: Routes.profilepage,
      page: () => const ProfilePage(),
    ),
  ];
}
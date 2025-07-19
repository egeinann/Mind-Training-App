import 'package:get/get.dart';
import 'package:mind_training_app/utils/strings.dart';

class MainController extends GetxController {
  var navigationIndex = 1.obs;
  Rx<String> appBarTitle = NavigationStrings.navIndex_1.obs;

  void changeNavigationIndex(int index) {
    navigationIndex.value = index;
    appBarTitle.value = _changeAppBarTitle(index);
  }

  String _changeAppBarTitle(int index) {
    switch (index) {
      case 0:
        return NavigationStrings.navIndex_0;
      case 1:
        return NavigationStrings.navIndex_1;
      case 2:
        return NavigationStrings.navIndex_2;
      default:
        return 'App';
    }
  }
}

import 'package:get/get.dart';

class AppTabController extends GetxController {
  final RxInt tabIndex = 0.obs;

  void changeTabIndex(int index) {
    tabIndex.value = index;
  }
}

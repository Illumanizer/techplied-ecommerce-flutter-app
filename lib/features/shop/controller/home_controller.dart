import 'package:get/instance_manager.dart';
import 'package:get/state_manager.dart';

class HomeController extends GetxController {
  static HomeController get instance => Get.find();

  final Rx<int> carouselIndex = 0.obs;
  
  void updateCarouselIndex(int index) {
    carouselIndex.value = index;
  }
  
}
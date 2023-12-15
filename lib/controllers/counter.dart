import 'package:get/get.dart';

class CounterController extends GetxController {
  var count = 0.obs;

  inc() {
    count.value++;
    update();
  }

  dec() {
    count.value--;
    update();
  }
}

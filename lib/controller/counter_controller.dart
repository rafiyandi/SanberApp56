import 'package:get/get.dart';

class CounterController extends GetxController {
  // var counter = 0.obs;
  int counter = 0;

  void incremenr() {
    counter++;
    update();
  }

  void decrement() {
    counter--;
    update();
  }
}

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:sanber_app_batch_56/controller/counter_controller.dart';

class CounterStatelesPage extends StatelessWidget {
  const CounterStatelesPage({super.key});

  @override
  Widget build(BuildContext context) {
    var counterC = Get.put(CounterController());
    print("direbuild Ulang");
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Page Stateless'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                counterC.decrement();
                print("data counter ${counterC.counter}");
              },
              child: const Icon(
                Icons.remove,
                size: 30,
              ),
            ),
            const SizedBox(width: 20),
            // Obx(
            //   () => Text('Counter : ${counterC.counter.value}'),
            // ),

            GetBuilder(
              init: counterC,
              builder: (_) {
                return Text('Counter : ${counterC.counter}');
              },
            ),

            const SizedBox(width: 20),
            InkWell(
              onTap: () {
                counterC.incremenr();
                print("data counter ${counterC.counter}");
              },
              child: const Icon(
                Icons.add,
                size: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sanber_app_batch_56/pages/nav/page_satu.dart';

class PageEmpat extends StatelessWidget {
  const PageEmpat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Empat'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {}, child: const Text(' <= BACK PAGE 1')),
            ElevatedButton(
                onPressed: () {
                  // Navigator.pushAndRemoveUntil(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => PageSatu(),
                  //     ),
                  // //     (route) => false);
                  // Navigator.pushNamedAndRemoveUntil(
                  //     context, '/', (route) => false);
                  Get.offAll(() => PageSatu());
                },
                child: const Text('Reset KE PAGE 1 ==>>')),
          ],
        ),
      ),
    );
  }
}

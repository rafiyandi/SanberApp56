import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sanber_app_batch_56/pages/nav/page_tiga.dart';

class PageDua extends StatelessWidget {
  const PageDua({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments = (ModalRoute.of(context)?.settings.arguments ??
        <String, dynamic>{}) as Map;
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Dua'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Page Dua ${arguments['name']}',
              style: TextStyle(fontSize: 25),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  Get.back();
                },
                child: Text(' <= BACK PAGE 1')),
            ElevatedButton(
                onPressed: () {
                  // Navigator.pushReplacement(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => PageTiga(),
                  //     ));
                  // Navigator.pushReplacementNamed(context, '/page-tiga');
                  Get.off(() => PageTiga());
                },
                child: Text('NEXT PAGE 3 ==>')),
          ],
        ),
      ),
    );
  }
}

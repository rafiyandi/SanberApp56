import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:sanber_app_batch_56/pages/nav/page_empat.dart';

class PageTiga extends StatelessWidget {
  const PageTiga({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Tiga'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: Text(' <= BACK PAGE 2')),
            ElevatedButton(
                onPressed: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => PageEmpat(),
                  //     ));
                  // Navigator.pushNamed(context, '/page-empat');
                  Get.to(() => PageEmpat());
                },
                child: Text('NEXT PAGE 4 ==>')),
          ],
        ),
      ),
    );
  }
}

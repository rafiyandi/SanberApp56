import 'package:flutter/material.dart';

class ExampleColumRow extends StatelessWidget {
  const ExampleColumRow({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> bulan = [
      'Januari',
      'Februari',
      'Maret',
      'April',
      'Mei',
      'Juni',
      'Juli',
      'Agustus',
      'September',
      'Oktober',
      'November',
      'Desember'
    ];
    // return Scaffold(
    //     appBar: AppBar(
    //       title: Text('Belajar Column and Row'),
    //     ),
    //     body: ListView.builder(
    //       itemCount: bulan.length,
    //       itemBuilder: (context, index) {
    //         return Container(
    //           width: 200,
    //           height: 200,
    //           decoration:
    //               BoxDecoration(color: Colors.amber, shape: BoxShape.circle),
    //           child: Center(child: Text('Data ${bulan[index]}')),
    //         );
    //       },
    //     ));
    return Scaffold(
      appBar: AppBar(),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 20, mainAxisSpacing: 20),
        primary: false,
        itemCount: bulan.length,
        padding: const EdgeInsets.all(20),
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[100],
            child: Text("${bulan[index]}"),
          );
        },
      ),
    );
  }
}

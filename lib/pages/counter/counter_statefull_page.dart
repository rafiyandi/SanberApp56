import 'package:flutter/material.dart';

class CounterStatefullPage extends StatefulWidget {
  const CounterStatefullPage({super.key});

  @override
  State<CounterStatefullPage> createState() => _CounterStatefullPageState();
}

class _CounterStatefullPageState extends State<CounterStatefullPage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    print("rabuid halaman");
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Page Statefull'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                counter--;
                print('Decrement ${counter}');
                setState(() {});
              },
              child: const Icon(
                Icons.remove,
                size: 30,
              ),
            ),
            const SizedBox(width: 20),
            Text('Counter : $counter'),
            const SizedBox(width: 20),
            InkWell(
              onTap: () {
                counter++;
                print('Increment ${counter}');
                setState(() {});
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

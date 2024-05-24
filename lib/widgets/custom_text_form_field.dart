import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {super.key,
      required this.label,
      this.onChanged,
      required this.controller});

  Widget label;
  Function(String)? onChanged;
  TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20),
        child: TextFormField(
          controller: controller,
          onChanged: (value) {},
          decoration: InputDecoration(
            label: label,
            border: OutlineInputBorder(),
          ),
        ));
  }
}

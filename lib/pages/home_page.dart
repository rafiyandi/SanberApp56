import 'package:flutter/material.dart';

import '../widgets/custom_text_form_field.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 30),
            child: Text(
              "Login",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
            ),
          ),
          CustomTextFormField(
            controller: emailController,
            label: Text('Masukkan Email'),
          ),
          CustomTextFormField(
            controller: passwordController,
            label: Text('Masukkan Password'),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      print("Hasil dari Email ${emailController.text}");
                      print("Hasil dari password ${passwordController.text}");
                    },
                    child: Text('Login'))),
          )
        ],
      ),
    );
  }
}

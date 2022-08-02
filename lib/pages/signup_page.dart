import '../widgets/signup_form.dart';
import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text("Register Now"),
      ),
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                "Create Account",
                style: TextStyle(
                  fontSize: 25,
                  //  fontWeight: FontWeight.bold
                ),
              ),
            ),
            SignUpForm(),
          ],
        ),
      ),
    );
  }
}

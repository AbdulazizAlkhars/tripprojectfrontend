import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../models/user.dart';
import '../providers/authprovider.dart';
import '../utils/constants.dart';
// ignore_for_file: prefer_const_constructors

class SigninPage extends StatelessWidget {
  const SigninPage({Key? key}) : super(key: key);

  get darkBG => null;

  @override
  Widget build(BuildContext context) {
    var username = TextEditingController();
    var password = TextEditingController();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(children: [
        Image(
            width: 275,
            height: 300,
            image: AssetImage("assets/images/story/cm7.jpeg")),
        SizedBox(height: 20),
        Text(
          "Ready for your next trip?",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),

        Padding(
          padding: const EdgeInsets.fromLTRB(25, 35, 25, 6),
          child: TextField(
            controller: username,
            // style: const TextStyle(fontSize: 12),
            decoration: InputDecoration(
              filled: true,
              fillColor: darkBG,
              hintText: 'Enter Your Username',
              prefixIcon: Icon(Icons.login),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.5),
                borderSide: const BorderSide(width: 1, color: Colors.black),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.5),
                borderSide: const BorderSide(
                    width: 1, color: Color.fromRGBO(236, 229, 199, 10)),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(25, 6, 25, 15),
          child: TextField(
            controller: password,
            // style: const TextStyle(fontSize: 12),
            //change icon color if active
            decoration: InputDecoration(
                filled: true,
                fillColor: darkBG,
                hintText: 'Enter Your Password',
                prefixIcon: Icon(Icons.lock_outline),
                // suffixIcon: Icon(Icons.visibility),
                suffixIcon: Icon(Icons.visibility_off),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.5),
                  borderSide: BorderSide(
                    width: 1,
                    color: Colors.black,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.5),
                    borderSide: const BorderSide(
                        width: 1, color: Color.fromRGBO(236, 229, 199, 10)))),
            obscureText: true,
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(25, 6, 25, 25),
          child: SizedBox(
            width: 340,
            height: 49,
            child: ElevatedButton(
                onPressed: () async {
                  await context.read<UserProvider>().signin(
                      User(username: username.text, password: password.text));
// if the user is signed in, navigate to the mainscreen otherwise show error
                  if (context.read<UserProvider>().isAuth == true) {
                    context.go("/SecondMain");
                  } else {
                    print("Error");
                  }
                },
                style: ElevatedButton.styleFrom(
                    textStyle: TextStyle(fontSize: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.5),
                    ),
                    primary: Colors.red),
                child: Text("Login")),
          ),
        ),
        // Text("Forget Password"),
        Text("Don't Have an Account?"),
        GestureDetector(
          //onTap go SignUp page
          onTap: () {
            context.push("/signup");
          },
          child: Text(
            "Create an Account",
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
                color: Colors.red),
          ),
        ),
      ]),
    );
  }
}

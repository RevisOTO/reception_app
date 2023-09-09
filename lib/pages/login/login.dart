// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:reception_app/pages/login/widgets/buttonRounded.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // Controllers para los campos de texto
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
              child: SizedBox(
            height: 230,
            width: 230,
          )),
          const Text("Welcome to TruckTrack warehouse",
              style: TextStyle(
                  height: 1.1,
                  fontSize: 50,
                  color: Colors.white,
                  fontWeight: FontWeight.w700)),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 60, 0, 20),
            child: RoundedButton(
                backgroundColor: const Color.fromARGB(255, 33, 124, 243),
                size: const Size(350, 60),
                label: const Text("Sign In with Email"),
                radius: 30,
                textColor: Colors.white,
                onClick: () {}),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RoundedButton(
                      backgroundColor: Colors.black,
                      size: const Size(160, 50),
                      label: const Text("Google"),
                      radius: 30,
                      textColor: Colors.white,
                      onClick: () {})),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RoundedButton(
                      backgroundColor: Colors.black,
                      size: const Size(160, 50),
                      label: const Text("Apple ID"),
                      radius: 30,
                      textColor: Colors.white,
                      onClick: () {})),
            ],
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: const Text(
                "By Consulting you agree to the Terms and Conditions",
                style: TextStyle(
                  color: Color.fromARGB(255, 87, 87, 87),
                )),
          )
        ],
      ),
    ));
  }
}

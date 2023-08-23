import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
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
        backgroundColor: Color.fromARGB(255, 13, 13, 13),
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
                margin: EdgeInsets.fromLTRB(0, 60, 0, 20),
                child: ElevatedButton(
                  style: const ButtonStyle(
                      fixedSize: MaterialStatePropertyAll(Size(350, 60)),
                      backgroundColor: MaterialStatePropertyAll(
                          Color.fromARGB(255, 33, 124, 243))),
                  child: const Text('Sign in wiith Email',
                      style: TextStyle(fontSize: 17, color: Colors.white)),
                  onPressed: () {
                    // Aquí iría la lógica para validar los datos
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        style: const ButtonStyle(
                            shadowColor: MaterialStatePropertyAll(
                                Color.fromARGB(255, 231, 231, 231)),
                            fixedSize: MaterialStatePropertyAll(Size(160, 50)),
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.black)),
                        onPressed: () {},
                        child: const Text("Google",
                            style: TextStyle(color: Colors.white))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        style: const ButtonStyle(
                            shadowColor: MaterialStatePropertyAll(
                                Color.fromARGB(255, 231, 231, 231)),
                            fixedSize: MaterialStatePropertyAll(Size(160, 50)),
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.black)),
                        onPressed: () {},
                        child: const Text("Apple ID",
                            style: TextStyle(color: Colors.white))),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
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

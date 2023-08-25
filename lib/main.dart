import 'package:flutter/material.dart';
import 'package:reception_app/globals/constants.dart';
import 'package:reception_app/pages/profile/profile.dart';
import 'package:reception_app/pages/splash/splash.dart';
import 'package:reception_app/pages/welcome/welcome.dart';
import 'pages/login/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(),
      theme: ThemeData(
          appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent),
          colorScheme: ColorScheme(
              brightness: Brightness.dark,
              primary: primaryColorBtn,
              onPrimary: Colors.white,
              secondary: Colors.black,
              onSecondary: Colors.white,
              error: Colors.red,
              onError: Colors.white,
              background: Color.fromARGB(255, 14, 14, 14),
              onBackground: Colors.white,
              surface: Colors.white,
              onSurface: Colors.black)),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: ProfilePage());
  }
}

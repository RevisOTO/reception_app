import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:reception_app/globals/constants.dart';
import 'package:reception_app/routes/routes.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

 void main() async {
  await Hive.initFlutter();
  //Hive.registerAdapter(TodoAdapter());
  runApp(const MyApp());
  
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Truck Track',
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      debugShowCheckedModeBanner: false,
      
      theme: ThemeData(
        colorSchemeSeed: Colors.lightBlue[800],
        useMaterial3: true,
        brightness: Brightness.light,
        scaffoldBackgroundColor: backgroundColor,
      ),
      initialRoute: "/",
      onGenerateRoute: RouteGenerator().generateRoute,
    );
  }
}
import 'package:flutter/material.dart';

import 'screens/homescreen.dart';
import 'screens/settingscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Maru',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.light,
      ),
      initialRoute: '/',
      routes: {
       '/': (_) => HomeScreen(),
       '/settings': (_) => SettingScreen(),
     },
    );
  }
}

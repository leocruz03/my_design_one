import 'package:flutter/material.dart';
import 'package:my_design_one/screens/register_screen.dart';
import 'package:my_design_one/screens/welcome_screen.dart';
/* import 'package:my_design_one/screens/welcome_screen.dart'; */

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      initialRoute: 'welcome_screen',
      routes: {
        'welcome_screen': (_) => const WelcomeScreen(),
        'register_screen': (_) => const RegisterScreen(),
      },
      home: const RegisterScreen(),
    );
  }
}

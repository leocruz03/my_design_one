import 'package:flutter/material.dart';
import 'package:my_design_one/providers/body_provider.dart';
import 'package:my_design_one/screens/add_cost.dart';
import 'package:my_design_one/screens/home_screen.dart';
import 'package:my_design_one/screens/login_screen.dart';
/* import 'package:my_design_one/screens/register_screen.dart'; */
import 'package:my_design_one/screens/welcome_screen.dart';
import 'package:provider/provider.dart';

/* import 'package:my_design_one/screens/welcome_screen.dart'; */

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => BodyProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(),
        initialRoute: 'welcome_screen',
        routes: {
          'welcome_screen': (_) => const WelcomeScreen(),
          /* 'register_screen': (_) => const RegisterScreen(), */
          'login_screen': (_) => const LoginScreen(),
          'home_screen': (_) => const HomeScreen(),
          'add_cost': (_) => const AddCostScreen(),
        },
      ),
    );
  }
}

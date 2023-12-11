import 'package:flutter/material.dart';
import 'package:haven/screens/home_screen.dart';
import 'package:haven/screens/login_register_page.dart';
import 'package:haven/auth.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Auth().authStateChanges,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return HomeScreen();
        } else {
          return const LoginPage();
        }
      },
    );
  }
}

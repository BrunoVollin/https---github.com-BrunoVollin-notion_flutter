import 'package:flutter/material.dart';
import 'package:test/app_controll.dart';
import 'package:test/login_page.dart';
import 'home_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppControll.instance,
      builder: (context, child) {
        return MaterialApp(
          home: LoginPage(),
          theme: ThemeData(
            brightness: AppControll.instance.isDarkTheme
                ? Brightness.dark
                : Brightness.light,
            primarySwatch: Colors.red,
          ),
          initialRoute: "/index",
          routes: {
            "/index": (context) => LoginPage(),
            "/home": (context) => HomePage(),
          },
        );
      },
    );
  }
}

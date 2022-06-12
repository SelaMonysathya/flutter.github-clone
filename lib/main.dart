import 'package:flutter/material.dart';
import 'package:github_clone/pages/dashboard_page.dart';
import 'package:github_clone/themes/color.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: primary,
        backgroundColor: dark,
        scaffoldBackgroundColor: dark,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: dark,
        ),
        appBarTheme: AppBarTheme(
          elevation: 0,
          color: dark,
          iconTheme: IconThemeData(
            color: primary
          )
        ),
        textTheme: TextTheme(
          bodyText1: TextStyle(
            color: white,
          ),
          headline6: TextStyle(
            fontWeight: FontWeight.w600
          )
        ),
      ),
      home: DashboardPage(),
    );
  }
}
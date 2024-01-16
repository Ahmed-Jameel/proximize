import 'package:flutter/material.dart';
import 'feature/auth/presentation/resources/theme_manager.dart';
import 'feature/auth/presentation/screens/on_boarding_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: getApplicationTheme(),
      debugShowCheckedModeBanner: false,
      home: OnBoardingPage(),
    );
  }
}

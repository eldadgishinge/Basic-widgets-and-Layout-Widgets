import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'theme.dart';

void main() {
  runApp(const SpendWiseApp());
}

class SpendWiseApp extends StatelessWidget {
  const SpendWiseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      theme: AppTheme.themeData,
      debugShowCheckedModeBanner: false,
    );
  }
}

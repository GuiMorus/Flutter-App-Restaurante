import 'package:flutter/material.dart';
import 'package:flutter_app_restaurante/UI/splash/splash_screen.dart';
import 'package:flutter_app_restaurante/ui/_core/app_theme.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.appTheme,
      home: SplashScreen(),
    );
  }
}


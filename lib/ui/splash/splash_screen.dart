import 'package:flutter/material.dart';
import 'package:flutter_app_restaurante/ui/_core/app_colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Stack(
        children: [
          Image.asset('assets/banners/banner_splash.png'),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 32,
                  children: [
                    Image.asset('assets/logo.png', width: 192),
                    Column(
                      children: [
                        Text("Um parceiro inovador para a sua", style: TextStyle(color: Colors.white, fontSize: 22)),
                        Text("Melhor experiência culinária!", style: TextStyle(color: AppColors.mainColor, fontSize: 22, fontWeight: FontWeight.w600)),
                      ],
                    ),
                    SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(onPressed: (){}, child: Text("Bora!"))
                    )
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}

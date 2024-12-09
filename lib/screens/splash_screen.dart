import 'package:flutter/material.dart';
import 'package:track_my_car/utils/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 6), () {
      Navigator.pushReplacementNamed(context, '/home');
    });
    bool isDarkTheme = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Hero(
              tag: "logo",
              child: Image.asset('assets/images/car.png',
                  height: MediaQuery.of(context).size.height / 3),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Araç Verilerinizi Kolayca Yönetin!',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppColors.primaryBlue,
            ),
            textAlign: TextAlign.center, // Metni ortalamak için
          ),
        ],
      ),
    );
  }
}

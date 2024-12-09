import 'package:flutter/material.dart';
import 'package:track_my_car/screens/home_screen.dart';
import 'package:track_my_car/screens/splash_screen.dart';
import 'package:track_my_car/utils/colors.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system, //Sisteme baglı tema
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.background,
        primaryColor: AppColors.primaryBlue, // birincil renk
        textTheme: TextTheme(
          // Başlık ve metin renklerini buradan belirliyoruz
          displayLarge: TextStyle(color: AppColors.darkGray, fontSize: 24),
          bodyLarge: TextStyle(color: AppColors.black, fontSize: 16),
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: AppColors.primaryBlue, // Butonlar için renk
        ),
        
      ),
      initialRoute: '/splash',
      routes: {
        '/splash': (contex) => const SplashScreen(),
        '/home': (context) => const HomeScreen(),
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:track_my_car/utils/colors.dart'; // AppColors import et

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CustomAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white, // iOS tarzı beyaz arka plan
      elevation: 0, // AppBar gölgesiz
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(20), // Yuvarlatılmış köşeler
        ),
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 22, // Başlık boyutu
          fontWeight: FontWeight.bold, // Kalın yazı tipi
          color: AppColors.primaryBlue, // Başlık rengi
        ),
      ),
      centerTitle: true, // Başlığı ortalamak
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80.0); // AppBar yüksekliği
}

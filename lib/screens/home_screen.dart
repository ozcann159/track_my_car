import 'package:flutter/material.dart';
import 'package:track_my_car/utils/colors.dart';
import 'package:track_my_car/widgets/custom_appbar.dart'; // Renkler için utils/colors.dart

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: CustomAppBar(title: 'Araçlar'),
      body: Column(
        children: [],
      ),
    );
  }
}

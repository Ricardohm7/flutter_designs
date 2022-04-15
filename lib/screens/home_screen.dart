import 'package:designs/widgets/background.dart';
import 'package:designs/widgets/custom_button_navigation.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //Background
          Background(),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigation(),
    );
  }
}

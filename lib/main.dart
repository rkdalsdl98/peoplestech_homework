import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:peoplestech_homework/screens/home_screen.dart';

void main() {
  runApp(const PeoplesTech());
}

class PeoplesTech extends StatelessWidget {
  const PeoplesTech({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          background: Color(0xFFF5F7FF),
        ),
      ),
      home: HomeScreen(),
    );
  }
}

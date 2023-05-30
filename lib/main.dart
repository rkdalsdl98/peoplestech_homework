import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const PeoplesTech());
}

class PeoplesTech extends StatelessWidget {
  const PeoplesTech({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: Scaffold(),
    );
  }
}

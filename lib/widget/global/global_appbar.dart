import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GlobalAppBar extends StatelessWidget {
  List<Widget>? customActions;
  Color? backgroundColor;
  final String title;

  GlobalAppBar({
    super.key,
    this.customActions,
    required this.title,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: const TextStyle(
          fontFamily: 'Pretendard',
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: Color(0xFF2E313D),
        ),
      ),
      centerTitle: true,
      backgroundColor:
          backgroundColor ?? Theme.of(context).colorScheme.background,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back_ios_new_rounded,
          size: 14,
          color: Color(0xFF878C9E),
        ),
        onPressed: () {
          Get.back();
        },
      ),
      actions: customActions,
    );
  }
}

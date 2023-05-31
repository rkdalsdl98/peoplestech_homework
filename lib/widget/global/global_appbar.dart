import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GlobalAppBar extends StatelessWidget {
  List<Widget>? customActions;

  GlobalAppBar({
    super.key,
    this.customActions,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        '포인트샵',
        style: TextStyle(
          fontFamily: 'Pretendard',
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: Color(0xFF2E313D),
        ),
      ),
      centerTitle: true,
      backgroundColor: Theme.of(context).colorScheme.background,
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

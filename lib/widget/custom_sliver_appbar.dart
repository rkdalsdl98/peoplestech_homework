import 'package:flutter/material.dart';
import 'package:peoplestech_homework/desigh/funcs.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white.withOpacity(0),
      expandedHeight: preferredAppbarSize,
      title: Padding(
        padding: const EdgeInsets.only(left: 15, top: 30),
        child: Row(
          children: [
            Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                color: const Color(0xFFE7EAF6),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(
                Icons.person,
                color: Color(0xFFBDC1D1),
                size: 16,
              ),
            ),
            RichText(
              text: const TextSpan(
                text: '   1,200 P',
                style: TextStyle(
                  color: Color(0xFF2E313D),
                  fontSize: 14,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  TextSpan(
                    text: ' 모았어요!',
                    style: TextStyle(
                      color: Color(0xFF2E313D),
                      fontSize: 14,
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 12,
                color: Color(0xFF6F7486),
              ),
            )
          ],
        ),
      ),
    );
  }
}

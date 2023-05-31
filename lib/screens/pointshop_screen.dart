import 'package:flutter/material.dart';
import 'package:peoplestech_homework/desigh/funcs.dart';
import 'package:peoplestech_homework/widget/global/global_appbar.dart';

class PointShopScreen extends StatelessWidget {
  const PointShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(preferredAppbarSize),
        child: GlobalAppBar(),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            height: 150,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '현재 1,200P 보유 중이에요',
                  style: TextStyle(
                    fontFamily: 'Pretendard',
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2E313D),
                  ),
                ),
                Row(
                  children: [
                    RichText(
                      text: const TextSpan(
                        style: TextStyle(
                          fontFamily: 'Pretendard',
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF5450D3),
                        ),
                        text: '어떤 상품',
                        children: [
                          TextSpan(
                            text: '을 구매할까요?',
                            style: TextStyle(
                              color: Color(0xFF2E313D),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

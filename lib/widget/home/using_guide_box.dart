import 'package:flutter/material.dart';

import '../../desigh/funcs.dart';

class UsingGuideBox extends StatelessWidget {
  const UsingGuideBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Container(
          width: 320 * scaleWidth(context),
          height: 72,
          decoration: BoxDecoration(
            color: const Color(0xFF2E313D),
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 20,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '새로워진 아지트, 어떻게 사용하나요?',
                          style: TextStyle(
                            fontFamily: 'Pretendard',
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFFD9DDEB),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '아지트 이용가이드',
                          style: TextStyle(
                            fontFamily: 'Pretendard',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Image(
                      image: AssetImage('assets/img/guideman.png'),
                      width: 40,
                      height: 40,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    ));
  }
}

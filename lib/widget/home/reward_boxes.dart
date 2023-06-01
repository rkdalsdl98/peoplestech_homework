import 'package:flutter/material.dart';

import '../../desigh/funcs.dart';

class RewardBoxes extends StatelessWidget {
  const RewardBoxes({
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                width: 150 * scaleWidth(context),
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Text(
                          '바로적립',
                          style: TextStyle(
                            fontFamily: 'Pretendard',
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF5450D3),
                          ),
                        ),
                        SizedBox(
                          width: 5 * scaleWidth(context),
                        ),
                        Container(
                          width: 44 * scaleWidth(context),
                          height: 20,
                          decoration: BoxDecoration(
                              color: const Color(0xFFF5F7FF),
                              borderRadius: BorderRadius.circular(45)),
                          child: const Center(
                            child: Text(
                              '0/10',
                              style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'Pretendard',
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF6F7486),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      '영상 광고 시청 하고',
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF6F7486),
                      ),
                    ),
                    RichText(
                      text: const TextSpan(
                        text: '20P',
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w900,
                          color: Colors.black,
                        ),
                        children: [
                          TextSpan(
                            text: ' 받기',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF6F7486),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 48 * scaleWidth(context),
                          height: 48,
                          decoration: BoxDecoration(
                            color: const Color(0xFFF5F7FF),
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: Image(
                            image:
                                const AssetImage('assets/img/movie_camera.png'),
                            width: 32 * scaleWidth(context),
                            height: 32,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                width: 150 * scaleWidth(context),
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Text(
                          '미션적립',
                          style: TextStyle(
                            fontFamily: 'Pretendard',
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF5450D3),
                          ),
                        ),
                        SizedBox(
                          width: 5 * scaleWidth(context),
                        ),
                        Container(
                          width: 44 * scaleWidth(context),
                          height: 20,
                          decoration: BoxDecoration(
                              color: const Color(0xFFF5F7FF),
                              borderRadius: BorderRadius.circular(45)),
                          child: const Center(
                            child: Text(
                              '무제한',
                              style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'Pretendard',
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF6F7486),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      '원하는 미션 골라서 참여',
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF6F7486),
                      ),
                    ),
                    const Text(
                      '하고 포인트 받기',
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF6F7486),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 48 * scaleWidth(context),
                          height: 48,
                          decoration: BoxDecoration(
                            color: const Color(0xFFF0FFFF),
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: Image(
                            image: const AssetImage('assets/img/joystick.png'),
                            width: 32 * scaleWidth(context),
                            height: 32,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

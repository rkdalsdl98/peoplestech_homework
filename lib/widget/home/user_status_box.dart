import 'package:flutter/material.dart';

import '../../desigh/funcs.dart';

class UserStatusBox extends StatelessWidget {
  Matrix4 walkTextMatrix = Matrix4(
    1, // scale X
    0, // rotate Y
    0,
    0,
    0, // rotate X
    1, // scale Y
    0,
    0,
    0,
    0,
    1,
    0,
    0, // translate X
    -12, // translate Y
    0,
    1,
  );

  Matrix4 characterMatrix = Matrix4(
    1, // scale X
    0, // rotate Y
    0,
    0,
    0, // rotate X
    1, // scale Y
    0,
    0,
    0,
    0,
    1,
    0,
    0, // translate X
    5, // translate Y
    0,
    1,
  );

  Matrix4 restButtonMatrix = Matrix4(
    1, // scale X
    0, // rotate Y
    0,
    0,
    0, // rotate X
    1, // scale Y
    0,
    0,
    0,
    0,
    1,
    0,
    0, // translate X
    -8, // translate Y
    0,
    1,
  );

  UserStatusBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Center(
        child: Container(
          margin: const EdgeInsets.only(top: 22),
          padding: const EdgeInsets.all(15),
          height: 315,
          width: 335 * scaleWidth(context),
          decoration: BoxDecoration(
            color: const Color(0xFF5450D3),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              width: 1,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.location_on,
                    color: Colors.white,
                    size: 24,
                  ),
                  RichText(
                    text: TextSpan(
                      text: '현재',
                      children: const [
                        TextSpan(
                          text: ' 강남구 서초동 체크인',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Pretendard',
                            color: Colors.white,
                          ),
                        )
                      ],
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Pretendard',
                        color: Colors.white.withOpacity(.4),
                      ),
                    ),
                  ),
                ],
              ),
              // 텍스트1
              RichText(
                text: const TextSpan(
                  text: '오늘의 걸음 수는',
                  children: [
                    TextSpan(
                      text: ' 5,000',
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Pretendard',
                        color: Colors.white,
                      ),
                    ),
                    TextSpan(
                      text: ' 이에요.',
                    )
                  ],
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Pretendard',
                  ),
                ),
              ),
              // 텍스트2
              Stack(
                children: [
                  const Positioned(
                    top: 30,
                    left: 35,
                    child: Image(
                      image: AssetImage('assets/img/round_full.png'),
                    ),
                  ),
                  const Positioned(
                    top: 30,
                    left: 35,
                    child: Image(
                      image: AssetImage('assets/img/round_half.png'),
                    ),
                  ),
                  Positioned(
                    child: Transform(
                      transform: characterMatrix,
                      child: const Image(
                        image: AssetImage('assets/img/character.png'),
                      ),
                    ),
                  ),
                ],
              ),
              // 이미지
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Transform(
                        transform: walkTextMatrix,
                        child: const Text(
                          '0',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Pretendard',
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    Transform(
                      transform: walkTextMatrix,
                      child: const Text(
                        '10,000',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Pretendard',
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // 걸음수 게이지 텍스트
              Transform(
                transform: restButtonMatrix,
                child: Container(
                  width: 100 * scaleWidth(context),
                  height: 32,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 145, 141, 248),
                    borderRadius: BorderRadius.circular(45),
                    border: Border.all(
                      width: 1,
                      color: Colors.white,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Image(
                        image: AssetImage('assets/img/azitpoint.png'),
                      ),
                      RichText(
                        text: const TextSpan(
                            text: '휴식하기',
                            style: TextStyle(
                              fontFamily: 'Pretendard',
                              fontSize: 14,
                              color: Colors.white,
                            ),
                            children: [
                              TextSpan(
                                text: ' 25',
                                style: TextStyle(
                                    fontFamily: 'Pretendard',
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ]),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

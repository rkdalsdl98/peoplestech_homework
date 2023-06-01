import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:peoplestech_homework/static/controllers.dart';

import '../widget/custom_sliver_appbar.dart';
import '../widget/global/event_box.dart';
import '../widget/home/menubar.dart';
import '../widget/home/mission_box.dart';
import '../widget/home/pointshop_box.dart';
import '../widget/home/reward_boxes.dart';
import '../widget/home/user_status_box.dart';
import '../widget/home/using_guide_box.dart';

class HomeScreen extends StatelessWidget {
  final UserController userController = Get.put(UserController());

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: CustomScrollView(
        slivers: [
          CustomSliverAppBar(),
          UserStatusBox(),
          const RewardBoxes(),
          MissionBox(
            assetsImage: 'assets/img/bullseye.png',
            assetBackgroundColor: const Color(0xFFFDECEE),
            contentWidgets: [
              const Text(
                '일일미션',
                style: TextStyle(
                  fontFamily: 'Pretendard',
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF5450D3),
                ),
              ),
              RichText(
                text: const TextSpan(
                    text: '돌림판 돌리고 최대',
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF6F7486),
                    ),
                    children: [
                      TextSpan(
                        text: ' 500P',
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w900,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: ' 받기',
                      ),
                    ]),
              ),
            ],
          ),
          MissionBox(
            isNew: true,
            assetsImage: 'assets/img/ringed_planet.png',
            contentWidgets: const [
              Text(
                '휴식하기',
                style: TextStyle(
                  fontFamily: 'Pretendard',
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF5450D3),
                ),
              ),
              Text(
                '아지트에서 특별한 휴식을 경험하세요!',
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF6F7486),
                ),
              )
            ],
            assetBackgroundColor: const Color(0xFFE8E8FB),
          ),
          const PointshopBox(),
          const EventBox(),
          const UsingGuideBox(),
          SliverToBoxAdapter(
            child: Container(
              height: 48,
              decoration: const BoxDecoration(
                color: Color(0xFF5450D3),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '하루 최대 10P 보너스 포인트 받는 법',
                    style: TextStyle(
                      fontFamily: 'Pretendard',
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 12,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: const Menubar(),
    );
  }
}

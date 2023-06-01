import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:peoplestech_homework/screens/pointshop_screen.dart';

import '../../desigh/funcs.dart';
import '../global/sample_item.dart';

class PointshopBox extends StatelessWidget {
  const PointshopBox({
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
            height: 375,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '포인트샵',
                                style: TextStyle(
                                  fontFamily: 'Pretendard',
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF5450D3),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                '차곡차곡 모은 포인트로',
                                style: TextStyle(
                                  fontFamily: 'Pretendard',
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF2E313D),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                '다른 사람들은 아래 상품 구매했어요',
                                style: TextStyle(
                                  fontFamily: 'Pretendard',
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF2E313D),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            width: 40 * scaleWidth(context),
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xFFF5F7FF),
                            ),
                            child: const Icon(
                              Icons.refresh,
                              color: Color(0xFF6F7486),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SampleItem(
                  assetsImage: 'assets/img/americano.png',
                  company: '빽다방',
                  itemName: '앗메리카노(ICED)',
                  price: 1446,
                ),
                const SizedBox(
                  height: 20,
                ),
                SampleItem(
                  assetsImage: 'assets/img/shinramen.png',
                  company: 'GS25',
                  itemName: '농심)신라면(봉지)',
                  price: 723,
                ),
                const SizedBox(
                  height: 20,
                ),
                SampleItem(
                  assetsImage: 'assets/img/navergiftcard.png',
                  company: '네이버페이 포인트쿠폰',
                  itemName: '네이버페이 포인트 1,000원',
                  price: 762,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(PointShopScreen());
                  },
                  child: Container(
                    margin: const EdgeInsets.only(top: 30),
                    width: 280 * scaleWidth(context),
                    height: 55,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        width: 1,
                        color: const Color(0xFFD9DDEB),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text(
                        '포인트샵 바로가기',
                        style: TextStyle(
                          fontFamily: 'Pretendard',
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF2E313D),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

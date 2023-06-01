import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:peoplestech_homework/desigh/funcs.dart';
import 'package:peoplestech_homework/screens/basket_screen.dart';
import 'package:peoplestech_homework/static/controllers.dart';
import 'package:peoplestech_homework/widget/global/global_appbar.dart';
import 'package:peoplestech_homework/widget/pointshop/category_icon.dart';

class PointShopScreen extends StatelessWidget {
  final CategoryController categoryController = Get.put(CategoryController());
  final UserController userController = Get.find<UserController>();
  final ItemsController itemController = Get.put(ItemsController());
  final CompanyController companyController = Get.put(CompanyController());

  final numFormat = NumberFormat.currency(locale: 'ko_KR', symbol: '');

  PointShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(preferredAppbarSize),
        child: GlobalAppBar(
          backgroundColor: Colors.white,
          title: '포인트샵',
          customActions: [
            TextButton(
              onPressed: () {
                Get.to(BasketScreen());
              },
              child: const Text(
                '구매내역',
                style: TextStyle(
                  fontFamily: 'Pretendard',
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF3634B3),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 28,
                vertical: 15,
              ),
              child: GetX<UserController>(builder: (controller) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '현재 ${numFormat.format(controller.userData().wallet)}P 보유 중이에요',
                      style: const TextStyle(
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
                        const Image(
                          image: AssetImage('assets/img/money_face.png'),
                          width: 28,
                          height: 28,
                        ),
                      ],
                    ),
                  ],
                );
              }),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: GetX<CategoryController>(
                        builder: (controller) {
                          final categorys =
                              controller.categoryDatas().categorys;
                          return GridView.builder(
                            padding: const EdgeInsets.all(20),
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                            ),
                            itemBuilder: (context, index) {
                              return CategoryIcon(
                                imageUrl: categorys[index]['imageUrl'],
                                categoryName: categorys[index]['category'],
                              );
                            },
                            itemCount: categorys.length,
                            primary: false,
                            shrinkWrap: true,
                          );
                        },
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

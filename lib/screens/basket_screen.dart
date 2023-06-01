import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:peoplestech_homework/static/controllers.dart';
import 'package:peoplestech_homework/widget/basket/basket_item.dart';

import '../desigh/funcs.dart';
import '../widget/global/global_appbar.dart';

class BasketScreen extends StatelessWidget {
  final UserController userController = Get.find<UserController>();

  Widget showEmptyScreen() {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage('assets/img/emptybasket.png'),
            width: 200,
            height: 140,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            '아직 구매내역이 비어있어요.\n다양한 상품 할인 받고 구매해보세요.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Pretendard',
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xFF878C9E),
            ),
          )
        ],
      ),
    );
  }

  BasketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(preferredAppbarSize),
        child: GlobalAppBar(
          title: '구매내역',
          backgroundColor: Colors.white,
        ),
      ),
      body: GetX<UserController>(builder: (controller) {
        final basket = controller.userData().basket;
        return basket.isEmpty
            ? showEmptyScreen()
            : SingleChildScrollView(
                child: Column(
                  children: [for (var item in basket) BasketItem(item: item)],
                ),
              );
      }),
    );
  }
}

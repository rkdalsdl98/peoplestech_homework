import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:peoplestech_homework/model/item_model.dart';
import 'package:peoplestech_homework/static/controllers.dart';

import '../desigh/funcs.dart';
import '../widget/global/global_appbar.dart';

class ProductScreen extends StatelessWidget {
  final String imageUrl;
  final String imageHugeUrl;
  final String company;
  final String itemName;
  final int price;
  final numFormat = NumberFormat.currency(locale: 'ko_KR', symbol: '');
  final UserController userController = Get.find<UserController>();

  ProductScreen({
    super.key,
    required this.imageUrl,
    required this.company,
    required this.itemName,
    required this.price,
    required this.imageHugeUrl,
  });

  void buyItem(BuildContext context) {
    final bool res = userController.buyingItem(
        price,
        ItemModel.fromDict(
          {
            "imageUrl": imageUrl,
            "imageUrlHuge": imageHugeUrl,
            "company": company,
            "itemName": itemName,
            "price": price,
          },
        ));

    if (res) {
      Navigator.pop(context);
      Get.back(result: true);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(45)),
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.only(
            bottom: 20,
            left: MediaQuery.of(context).size.width - 360,
            right: MediaQuery.of(context).size.width - 360,
          ),
          content: Container(
            height: 25,
            decoration: const BoxDecoration(
              color: Color(0xFF2E313D),
            ),
            child: Row(
              children: [
                const Image(
                  image: AssetImage('assets/img/exclamation.png'),
                  width: 20,
                  height: 20,
                ),
                SizedBox(
                  width: 25 * scaleWidth(context),
                ),
                const Text(
                  '상품 구매를 위한 포인트가 부족해요.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Pretendard',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFFFFFFF),
                  ),
                )
              ],
            ),
          ),
          duration: const Duration(seconds: 3),
        ),
      );
    }
  }

  Future<void> onPressBuyButton(BuildContext context) async {
    await showDialog(
      context: context,
      builder: (context) => ScaffoldMessenger(
        child: Builder(builder: (context) {
          return Scaffold(
            backgroundColor: Colors.transparent,
            body: AlertDialog(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
              content: Builder(
                builder: (context) {
                  return SizedBox(
                    height: 320,
                    width: 320 * scaleWidth(context),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image(
                          image: AssetImage(imageUrl),
                          width: 80,
                          height: 80,
                        ),
                        Column(
                          children: [
                            Text(
                              itemName,
                              style: const TextStyle(
                                fontFamily: 'Pretendard',
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF5450D3),
                              ),
                            ),
                            const Text(
                              '을(를) 구매하시겠어요?',
                              style: TextStyle(
                                fontFamily: 'Pretendard',
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF5450D3),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                          ),
                          width: 263 * scaleWidth(context),
                          height: 43,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xFFF5F7FF),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                '보유',
                                style: TextStyle(
                                  fontFamily: 'Pretendard',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF6F7486),
                                ),
                              ),
                              Text(
                                '${numFormat.format(userController.userData().wallet)} P',
                                style: const TextStyle(
                                  fontFamily: 'Pretendard',
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF2E313D),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                          ),
                          width: 263 * scaleWidth(context),
                          height: 43,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xFFF5F7FF),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                '소모',
                                style: TextStyle(
                                  fontFamily: 'Pretendard',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF6F7486),
                                ),
                              ),
                              Text(
                                '${numFormat.format(price)} P',
                                style: const TextStyle(
                                  fontFamily: 'Pretendard',
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF2E313D),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
              actionsAlignment: MainAxisAlignment.center,
              actionsPadding: const EdgeInsets.only(bottom: 20),
              actions: [
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    width: 123 * scaleWidth(context),
                    height: 48,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        width: 1,
                        color: const Color(0xFFD9DDEB),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        '취소',
                        style: TextStyle(
                          fontFamily: 'Pretendard',
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF6F7486),
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    buyItem(context);
                  },
                  child: Container(
                    width: 123 * scaleWidth(context),
                    height: 48,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color(0xFF5450D3),
                      border: Border.all(
                        width: 1,
                        color: const Color(0xFF5450D3),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        '구매하기',
                        style: TextStyle(
                          fontFamily: 'Pretendard',
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        }),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(preferredAppbarSize),
        child: GlobalAppBar(
          backgroundColor: Colors.white,
          title: '포인트샵',
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 319 * scaleWidth(context),
                height: 319,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image(
                  image: AssetImage(imageHugeUrl),
                ),
              ),
              // 이미지
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xFFD9DDEB),
                      width: 1,
                    ),
                  ),
                ),
                height: 110,
                width: Size.infinite.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      company,
                      style: const TextStyle(
                        fontFamily: 'Pretendard',
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF878C9E),
                      ),
                    ),
                    Text(
                      itemName,
                      style: const TextStyle(
                        fontFamily: 'Pretendard',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2E313D),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const Text(
                          '50%',
                          style: TextStyle(
                            fontFamily: 'Pretendard',
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFE94251),
                          ),
                        ),
                        Text(
                          '  ${numFormat.format(price)}',
                          style: const TextStyle(
                            fontFamily: 'Pretendard',
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF3634B3),
                          ),
                        ),
                        const Image(
                          image: AssetImage('assets/img/point.png'),
                        ),
                        SizedBox(
                          width: 10 * scaleWidth(context),
                        ),
                        Text(
                          numFormat.format(price * 2),
                          style: const TextStyle(
                            fontFamily: 'Pretendard',
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFFBDC1D1),
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              // 상품 가격
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xFFD9DDEB),
                      width: 1,
                    ),
                  ),
                ),
                height: 160,
                width: Size.infinite.width,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '상품정보',
                      style: TextStyle(
                        fontFamily: 'Pretendard',
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2E313D),
                      ),
                    ),
                    SizedBox(
                      height: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              Image(
                                image: AssetImage(
                                  'assets/img/categorys/admission_tickets.png',
                                ),
                                width: 16,
                                height: 16,
                              ),
                              Text(
                                ' 모바일 쿠폰',
                                style: TextStyle(
                                  fontFamily: 'Pretendard',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF2E313D),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Image(
                                image: AssetImage(
                                  'assets/img/calender.png',
                                ),
                                width: 16,
                                height: 16,
                              ),
                              Text(
                                ' 구매일로부터 30일 이내 사용 가능',
                                style: TextStyle(
                                  fontFamily: 'Pretendard',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF2E313D),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Image(
                                image: AssetImage(
                                  'assets/img/message.png',
                                ),
                                width: 16,
                                height: 16,
                              ),
                              Text(
                                ' 구매 완료 후 5~10분 내 메세지 발송',
                                style: TextStyle(
                                  fontFamily: 'Pretendard',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF2E313D),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // 상품 정보
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 40,
                ),
                height: 422,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '상품설명',
                      style: TextStyle(
                        fontFamily: 'Pretendard',
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2E313D),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      '▶ 유의사항\n- 상기 이미지는 연출된 것으로 실제와 다를 수 있습니다.\n- 본 상품은 매장 재고 상황에 따라 동일 상품으로 교환이 불가능할 수 있습니다.\n- 동일 상품 교환이 불가한 경우 동일 가격 이상의 다른 상품으로 교환이 가능하며, 동일 상품 외 다른 상품으로 교환할 시 차액이 발생할 수 있습니다. (차액 추가 지불) - 스타벅스 앱의 사이렌 오더를 통해서도 주문 및 결제가 가능합니다. (일부 MD제외)\n- 미군부내 매장, 워터파크 입점 매장, 인천공항 입점 매장, 마장휴게소점 등 일부 매장에서는 사용이 불가합니다.\n- 해당 쿠폰과 스타벅스 카드의 복합결제 거래는 스타벅스 카드의 고유 혜택인 Free Extra 및 별 적립은 적용 대상이 아닌 점 이용에 참고하시기 바랍니다.\n- 정식 판매처 외의 장소나 경로를 통하여 구매하거나, 기타의 방법으로 보유하신 쿠폰은 정상적인 사용 (환불, 재전송 등 포함)이 금지되거나 제한될 수 있으니 주의하시기 바랍니다.\n-  해당 쿠폰을 무단으로 가공하는 등의 행위는 관계 법령에 위반될 수 있습니다.',
                      style: TextStyle(
                        fontFamily: 'Pretendard',
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF6F7486),
                        height: 1.5,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: GestureDetector(
        onTap: () {
          onPressBuyButton(context);
        },
        child: Container(
          height: 64,
          margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          decoration: BoxDecoration(
            color: const Color(0xFF5450D3),
            borderRadius: BorderRadius.circular(15),
          ),
          child: const Center(
            child: Text(
              '구매하기',
              style: TextStyle(
                fontFamily: 'Pretendard',
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xFFFFFFFF),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

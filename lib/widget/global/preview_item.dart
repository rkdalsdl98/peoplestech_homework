import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:peoplestech_homework/screens/product_screen.dart';

import '../../desigh/funcs.dart';

class PreviewItem extends StatelessWidget {
  final String imageUrl;
  final String company;
  final String itemName;
  final String imageUrlHuge;
  final int price;
  final numFormat = NumberFormat.currency(locale: 'ko_KR', symbol: '');

  PreviewItem({
    super.key,
    required this.imageUrl,
    required this.company,
    required this.itemName,
    required this.price,
    required this.imageUrlHuge,
  });

  Future<void> showDetail(BuildContext context) async {
    var result = await Get.to(ProductScreen(
      imageUrl: imageUrl,
      imageHugeUrl: imageUrlHuge,
      company: company,
      itemName: itemName,
      price: price,
    ));
    if (result == true) {
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
            height: 35,
            decoration: const BoxDecoration(
              color: Color(0xFF2E313D),
            ),
            child: Row(
              children: [
                const Image(
                  image: AssetImage('assets/img/success.png'),
                  width: 20,
                  height: 20,
                ),
                SizedBox(
                  width: 25 * scaleWidth(context),
                ),
                const Column(
                  children: [
                    Text(
                      '상품 구매가 완료되었어요.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Pretendard',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                    Text(
                      '구매내역에서 바로 확인해보세요.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Pretendard',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFFFFFFF),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          duration: const Duration(seconds: 3),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 25,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              showDetail(context);
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image(
                image: AssetImage(imageUrl),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            company,
            style: const TextStyle(
              fontFamily: 'Pretendard',
              fontSize: 10,
              fontWeight: FontWeight.w500,
              color: Color(0xFF6F7486),
            ),
          ),
          Text(
            itemName,
            style: const TextStyle(
              fontFamily: 'Pretendard',
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Color(0xFF2E313D),
            ),
          ),
          Row(
            children: [
              Text(
                numFormat.format(price),
                style: const TextStyle(
                  fontFamily: 'Pretendard',
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF3634B3),
                ),
              ),
              const Image(
                image: AssetImage('assets/img/azitpoint.png'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

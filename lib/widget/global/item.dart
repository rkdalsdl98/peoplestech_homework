import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../desigh/funcs.dart';

class Item extends StatelessWidget {
  final String assetsImage;
  final String company;
  final String itemName;
  final int price;
  final numFormat = NumberFormat.currency(locale: 'ko_KR', symbol: '');

  Item({
    super.key,
    required this.assetsImage,
    required this.company,
    required this.itemName,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image(
                image: AssetImage(assetsImage),
              ),
              SizedBox(
                width: 10 * scaleWidth(context),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                ],
              ),
            ],
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
          )
        ],
      ),
    );
  }
}

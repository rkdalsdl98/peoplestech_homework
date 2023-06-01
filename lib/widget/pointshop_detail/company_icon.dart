import 'package:flutter/material.dart';

import '../../desigh/funcs.dart';

class CompanyIcon extends StatelessWidget {
  final String companyName;
  final String imageUrl;

  const CompanyIcon({
    super.key,
    required this.companyName,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 24),
      padding: const EdgeInsets.symmetric(vertical: 10),
      width: 48 * scaleWidth(context),
      height: 68,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 48 * scaleWidth(context),
            height: 48,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: const Color(0xFFE7EAF6),
                width: 1,
              ),
            ),
            child: Image(
              image: AssetImage(imageUrl),
            ),
          ),
          Text(
            companyName,
            style: const TextStyle(
              fontFamily: 'Pretendard',
              fontSize: 10,
              fontWeight: FontWeight.w500,
              color: Color(0xFF2E313D),
            ),
          ),
        ],
      ),
    );
  }
}

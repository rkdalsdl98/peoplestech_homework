import 'package:flutter/material.dart';

import '../../desigh/funcs.dart';

class CompanyIconByCategory extends StatelessWidget {
  final String imageUrl;
  final String company;

  const CompanyIconByCategory({
    super.key,
    required this.company,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Color(0xFFD9DDEB), width: 1),
        ),
      ),
      height: 64,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 32 * scaleWidth(context),
                height: 32,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: const Color(0xFFE7EAF6),
                    width: 1,
                  ),
                ),
                child: Image(
                  image: AssetImage(
                    imageUrl,
                  ),
                ),
              ),
              Text(
                '  $company',
                style: const TextStyle(
                  fontFamily: 'Pretendard',
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF6F7486),
                ),
              ),
            ],
          ),
          const Icon(
            Icons.arrow_forward_ios_rounded,
            size: 20,
            color: Color(0xFFBDC1D1),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../screens/pointshop_detail_screen.dart';

class CategoryIcon extends StatelessWidget {
  final String imageUrl;
  final String categoryName;

  const CategoryIcon({
    super.key,
    required this.imageUrl,
    required this.categoryName,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(PointShopDetailScreen(
          selCategoryName: categoryName,
          categoryImageUrl: imageUrl,
        ));
      },
      child: Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: const Color(0xFFE7EAF6),
          ),
          borderRadius: BorderRadius.circular(35),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(
              image: AssetImage(
                imageUrl,
              ),
              width: 40,
              height: 40,
            ),
            Text(
              categoryName,
              style: const TextStyle(
                fontFamily: 'Pretendard',
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xFF2E313D),
              ),
            )
          ],
        ),
      ),
    );
  }
}

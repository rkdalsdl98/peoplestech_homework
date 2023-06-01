import 'dart:io' show Platform;

import 'package:flutter/material.dart';

import '../../desigh/funcs.dart';
import 'company_icon_by_category.dart';

class CompanyCategoryIcon extends StatelessWidget {
  final List<Map<String, dynamic>> companys;
  final String selCategoryName;
  final String categoryImageUrl;

  void showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          margin: const EdgeInsets.all(20),
          height: MediaQuery.of(context).size.height - 150,
          child: Center(
            child: Column(
              children: [
                if (Platform.isAndroid)
                  Container(
                    width: 48 * scaleWidth(context),
                    height: 5,
                    decoration: BoxDecoration(
                      color: const Color(0xFFD9DDEB),
                      borderRadius: BorderRadius.circular(45),
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 5,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        selCategoryName,
                        style: const TextStyle(
                          fontFamily: 'Pretendard',
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF2E313D),
                        ),
                      ),
                      Image(
                        image: AssetImage(categoryImageUrl),
                        width: 24,
                        height: 24,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView(
                    padding: const EdgeInsets.only(top: 5),
                    children: [
                      for (var data in companys)
                        CompanyIconByCategory(
                          company: data['company'],
                          imageUrl: data['imageUrl'],
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      isScrollControlled: true,
    );
  }

  const CompanyCategoryIcon({
    super.key,
    required this.companys,
    required this.selCategoryName,
    required this.categoryImageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showBottomSheet(context);
      },
      child: Container(
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
                child: const Icon(
                  Icons.menu_rounded,
                  size: 24,
                  color: Color(0xFF6F7486),
                )),
            const Text(
              '카테고리',
              style: TextStyle(
                fontFamily: 'Pretendard',
                fontSize: 10,
                fontWeight: FontWeight.w500,
                color: Color(0xFF2E313D),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

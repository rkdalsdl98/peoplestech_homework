import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../static/controllers.dart';
import 'company_category_icon.dart';
import 'company_icon.dart';

class CompanyList extends StatelessWidget {
  final CompanyController companyController = Get.put(CompanyController());
  final String selCategoryName;
  final String categoryImageUrl;

  CompanyList({
    super.key,
    required this.selCategoryName,
    required this.categoryImageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 1,
              color: Color(0xFFD9DDEB),
            ),
          ),
        ),
        height: 108,
        child: Column(
          children: [
            Expanded(
              child: GetX<CompanyController>(
                builder: (controller) {
                  final companys = controller.companyDatas().companys;
                  return ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      CompanyCategoryIcon(
                        companys: companys,
                        selCategoryName: selCategoryName,
                        categoryImageUrl: categoryImageUrl,
                      ),
                      for (var company in companys)
                        CompanyIcon(
                          companyName: company['company'],
                          imageUrl: company['imageUrl'],
                        )
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

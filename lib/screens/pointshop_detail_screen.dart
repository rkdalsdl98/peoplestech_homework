import 'package:flutter/material.dart';

import '../desigh/funcs.dart';
import '../widget/global/global_appbar.dart';
import '../widget/pointshop_detail/company_list.dart';
import '../widget/pointshop_detail/preview_item_list.dart';

class PointShopDetailScreen extends StatelessWidget {
  String selCategoryName;
  String categoryImageUrl;

  PointShopDetailScreen({
    super.key,
    this.selCategoryName = '전체',
    this.categoryImageUrl = '',
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(preferredAppbarSize),
        child: GlobalAppBar(
          title: selCategoryName,
          backgroundColor: Colors.white,
        ),
      ),
      body: CustomScrollView(
        slivers: [
          CompanyList(
            selCategoryName: selCategoryName,
            categoryImageUrl: categoryImageUrl,
          ),
          PreviewItemList(),
        ],
      ),
    );
  }
}

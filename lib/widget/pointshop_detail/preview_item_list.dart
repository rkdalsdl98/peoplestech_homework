import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../static/controllers.dart';
import '../global/sort_button.dart';
import '../global/preview_item.dart';

class PreviewItemList extends StatelessWidget {
  final ItemsController itemController = Get.find<ItemsController>();

  PreviewItemList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Expanded(
        child: SizedBox(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GetX<ItemsController>(
                      builder: (controller) => Text(
                        controller.itemDatas().desc ? '높은가격순' : '낮은가격순',
                        style: const TextStyle(
                          fontFamily: 'Pretendard',
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF2E313D),
                        ),
                      ),
                    ),
                    SortButton(),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: GetX<ItemsController>(
                      builder: (controller) {
                        final items = controller.itemDatas().previewItems;
                        return GridView.builder(
                          padding: const EdgeInsets.only(bottom: 20),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2),
                          itemBuilder: (context, index) {
                            return PreviewItem(
                              imageUrl: items[index].imageUrl,
                              itemName: items[index].itemName,
                              company: items[index].company,
                              price: items[index].price,
                              imageUrlHuge: items[index].imageUrlHuge,
                              category: items[index].category,
                            );
                          },
                          itemCount: items.length,
                          primary: false,
                          shrinkWrap: true,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

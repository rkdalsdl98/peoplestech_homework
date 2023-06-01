import 'dart:io' show Platform;

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../desigh/funcs.dart';
import '../../static/controllers.dart';

class SortButton extends StatelessWidget {
  final ItemsController itemController = Get.find<ItemsController>();

  SortButton({
    super.key,
  });

  void showBottomSheet(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      builder: (BuildContext context) {
        return GetX<ItemsController>(
          builder: (controller) {
            return SizedBox(
              height: 200,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                    Column(
                      children: [
                        SizedBox(
                          width: 323 * scaleWidth(context),
                          height: 96,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GestureDetector(
                                onTap: () => itemController.sortDatas(false),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '낮은가격순',
                                      style: TextStyle(
                                        fontFamily: 'Pretendard',
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Color(
                                            itemController.itemDatas().desc
                                                ? 0xFFBDC1D1
                                                : 0xFF5450D3),
                                      ),
                                    ),
                                    Icon(
                                      Icons.check,
                                      color: Color(
                                          itemController.itemDatas().desc
                                              ? 0xFFBDC1D1
                                              : 0xFF5450D3),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 319 * scaleWidth(context),
                                height: 1,
                                decoration: const BoxDecoration(
                                  color: Color(0xFFD9DDEB),
                                ),
                              ),
                              GestureDetector(
                                onTap: () => itemController.sortDatas(true),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '높은가격순',
                                      style: TextStyle(
                                        fontFamily: 'Pretendard',
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Color(
                                            itemController.itemDatas().desc
                                                ? 0xFF5450D3
                                                : 0xFFBDC1D1),
                                      ),
                                    ),
                                    Icon(
                                      Icons.check,
                                      color: Color(
                                          itemController.itemDatas().desc
                                              ? 0xFF5450D3
                                              : 0xFFBDC1D1),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 40,
      icon: const Icon(
        Icons.arrow_drop_down_rounded,
        color: Color(0xFF2E313D),
      ),
      onPressed: () {
        showBottomSheet(context);
      },
    );
  }
}

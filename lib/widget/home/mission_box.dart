import 'package:flutter/material.dart';

import '../../desigh/funcs.dart';

class MissionBox extends StatelessWidget {
  final String assetsImage;
  final List<Widget> contentWidgets;
  final Color assetBackgroundColor;
  bool isNew;

  MissionBox({
    super.key,
    required this.assetsImage,
    required this.contentWidgets,
    required this.assetBackgroundColor,
    this.isNew = false,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 92,
            width: 320 * scaleWidth(context),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 10 * scaleWidth(context),
                    ),
                    Container(
                      width: 48 * scaleWidth(context),
                      height: 48,
                      decoration: BoxDecoration(
                          color: assetBackgroundColor,
                          borderRadius: BorderRadius.circular(45)),
                      child: Image(
                        image: AssetImage(assetsImage),
                        width: 32,
                        height: 32,
                      ),
                    ),
                    SizedBox(
                      width: 10 * scaleWidth(context),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: contentWidgets,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (isNew)
                      Container(
                        margin: const EdgeInsets.only(
                          right: 8,
                        ),
                        width: 44 * scaleWidth(context),
                        height: 20,
                        decoration: BoxDecoration(
                            color: const Color(0xFFE8E8FB),
                            borderRadius: BorderRadius.circular(45)),
                        child: const Center(
                          child: Text(
                            'NEW',
                            style: TextStyle(
                              color: Color(0xFF5450D3),
                              fontFamily: 'Pretendard',
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_forward_ios_rounded),
                      color: const Color(0xFFBDC1D1),
                      iconSize: 16,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'dart:io' show Directory, File, Platform;
import 'package:path/path.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:peoplestech_homework/model/item_model.dart';

import '../../desigh/funcs.dart';

class BasketItem extends StatelessWidget {
  final ItemModel item;

  const BasketItem({
    super.key,
    required this.item,
  });

  Future<void> _saveImage(BuildContext context) async {
    try {
      final Directory? dir = await getExternalStorageDirectory();
      var dbPath = join(dir!.path, "giftcard.png");
      ByteData data = await rootBundle.load("assets/img/gift.png");
      List<int> bytes =
          data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
      final res = await File(dbPath).writeAsBytes(bytes);
      if (res != null) {
        showSnackBarMessage(context, false);
      } else {
        showSnackBarMessage(context, true);
      }
    } catch (e) {
      print(e);
      throw Error();
    }
  }

  void showSnackBarMessage(BuildContext context, bool isException) {
    Navigator.pop(context);

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(45)),
        behavior: SnackBarBehavior.floating,
        margin: EdgeInsets.only(
          bottom: 20,
          left: MediaQuery.of(context).size.width - 320,
          right: MediaQuery.of(context).size.width - 320,
        ),
        content: Container(
          height: 25,
          decoration: const BoxDecoration(
            color: Color(0xFF2E313D),
          ),
          child: Row(
            children: [
              Image(
                image: AssetImage(isException
                    ? 'assets/img/exclamation.png'
                    : 'assets/img/success.png'),
                width: 20,
                height: 20,
              ),
              SizedBox(
                width: 25 * scaleWidth(context),
              ),
              Text(
                isException ? '이미지 저장에 실패했어요.' : '이미지가 저장되었어요.',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontFamily: 'Pretendard',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFFFFFFFF),
                ),
              )
            ],
          ),
        ),
        duration: const Duration(seconds: 3),
      ),
    );
  }

  void showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return SizedBox(
          height: MediaQuery.of(context).size.height - 120,
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
              SizedBox(
                height: MediaQuery.of(context).size.height - 250,
                width: MediaQuery.of(context).size.width - 50,
                child: const Image(
                  image: AssetImage('assets/img/gift.png'),
                  fit: BoxFit.contain,
                ),
              ),
              GestureDetector(
                onTap: () {
                  _saveImage(context);
                },
                child: Container(
                  height: 56,
                  width: 300 * scaleWidth(context),
                  decoration: BoxDecoration(
                    color: const Color(0xFF5450D3),
                    borderRadius: BorderRadius.circular(45),
                  ),
                  child: const Center(
                    child: Text(
                      '이미지 다운로드',
                      style: TextStyle(
                        fontFamily: 'Pretendard',
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              )
            ],
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

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(25, 25, 25, 5),
          height: 48,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    height: 48,
                    child: Image(
                      image: AssetImage(item.imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 10 * scaleWidth(context),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        item.company,
                        style: const TextStyle(
                          fontFamily: 'Pretendard',
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF878C9E),
                        ),
                      ),
                      Text(
                        item.itemName,
                        style: const TextStyle(
                          fontFamily: 'Pretendard',
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF2E313D),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              IconButton(
                icon: const Icon(
                  Icons.file_download_outlined,
                  size: 20,
                  color: Color(0xFF878C9E),
                ),
                onPressed: () {
                  showBottomSheet(context);
                },
              ),
            ],
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';

import '../../desigh/funcs.dart';

class EventBox extends StatelessWidget {
  const EventBox({
    super.key,
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
            padding: const EdgeInsets.all(14),
            width: 320 * scaleWidth(context),
            height: 211,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '이벤트',
                  style: TextStyle(
                    fontFamily: 'Pretendard',
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF5450D3),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '42일간 진행되는 특급 혜택!',
                  style: TextStyle(
                    fontFamily: 'Pretendard',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2E313D),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '포인트샵 50% 할인 이벤트',
                  style: TextStyle(
                    fontFamily: 'Pretendard',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2E313D),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '1  /  2',
                      style: TextStyle(
                        fontFamily: 'Pretendard',
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF2E313D),
                      ),
                    ),
                    Image(
                      image: AssetImage('assets/img/event.png'),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

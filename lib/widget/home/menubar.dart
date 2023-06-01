import 'package:flutter/material.dart';
import 'package:peoplestech_homework/desigh/funcs.dart';

class Menubar extends StatelessWidget {
  const Menubar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: preferredMenubarSize,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.home_filled,
                size: 21.47,
              ),
              Text(
                '홈',
                style: TextStyle(
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w500,
                    fontSize: 12),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('assets/img/wallet.png'),
                width: 21.47,
                height: 21.47,
              ),
              Text(
                '내지갑',
                style: TextStyle(
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  color: Color(0xFFE7EAF6),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('assets/img/star_rounded.png'),
                width: 21.47,
                height: 21.47,
              ),
              Text(
                '이벤트',
                style: TextStyle(
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  color: Color(0xFFE7EAF6),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.person,
                size: 21.47,
                color: Color(0xFFE7EAF6),
              ),
              Text(
                'MY',
                style: TextStyle(
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  color: Color(0xFFE7EAF6),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

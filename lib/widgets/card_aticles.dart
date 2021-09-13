import 'package:flutter/material.dart';
import 'package:online_course/theme.dart';

class CardAticles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 12),
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
        color: Color(0xffffffff),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              bottomLeft: Radius.circular(16),
            ),
            child: Image.asset(
              'assets/image3.png',
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 12, top: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'How to: Work faster as\nFull Stack Designer',
                  style: textPrimary.copyWith(
                    fontSize: 12,
                    fontWeight: semiBold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'UI Design',
                  style: textSecondary.copyWith(
                    fontSize: 12,
                    fontWeight: semiBold,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            margin: EdgeInsets.only(right: 19),
            child: Image.asset(
              'assets/icon_love.png',
              width: 16,
            ),
          ),
        ],
      ),
    );
  }
}

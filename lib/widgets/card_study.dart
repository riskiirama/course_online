import 'package:flutter/material.dart';
import 'package:online_course/theme.dart';

class CardDetail extends StatelessWidget {
  final String image;
  final String text;
  final String desc;
  CardDetail(this.image, this.text, this.desc);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 12),
      padding: EdgeInsets.only(top: 12, left: 12),
      width: 120,
      height: 120,
      decoration: BoxDecoration(
        color: Color(0xffffffff),
        borderRadius: BorderRadius.circular(
          10,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            image,
            width: 42,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 17),
          Text(
            text,
            style: textPrimary.copyWith(
              fontSize: 12,
              fontWeight: semiBold,
            ),
          ),
          SizedBox(height: 4),
          Text(
            desc,
            style: textPrimary.copyWith(
              fontSize: 10,
              fontWeight: medium,
            ),
          ),
        ],
      ),
    );
  }
}

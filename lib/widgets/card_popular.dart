import 'package:flutter/material.dart';
import 'package:online_course/theme.dart';

class CardPopular extends StatelessWidget {
  final String image;
  final String text;
  final String desc;
  CardPopular(this.image, this.text, this.desc);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 181,
      height: 205,
      margin: EdgeInsets.only(top: 12),
      decoration: BoxDecoration(
        color: Color(0xffffffff),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
            child: Image.asset(
              image,
              height: 105,
              width: 181,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 12, top: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'FREE',
                  style: textGreen.copyWith(
                    fontWeight: semiBold,
                    fontSize: 12,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  text,
                  style: textPrimary.copyWith(
                    fontWeight: semiBold,
                    fontSize: 12,
                  ),
                ),
                SizedBox(height: 7),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      size: 16,
                      color: Color(0xffFFBC58),
                    ),
                    Icon(
                      Icons.star,
                      size: 16,
                      color: Color(0xffFFBC58),
                    ),
                    Icon(
                      Icons.star,
                      size: 16,
                      color: Color(0xffFFBC58),
                    ),
                    Icon(
                      Icons.star,
                      size: 16,
                      color: Color(0xffFFBC58),
                    ),
                    Icon(
                      Icons.star,
                      size: 16,
                      color: Color(0xffFFBC58),
                    ),
                    SizedBox(width: 4),
                    Text(
                      desc,
                      style: textSecondary.copyWith(
                        fontSize: 10,
                        fontWeight: medium,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:online_course/theme.dart';

class ListDetail extends StatelessWidget {
  final String text;

  ListDetail(this.text);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 24),
      height: 30,
      width: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color(0xffFFFFFF),
      ),
      child: Center(
        child: Text(
          text,
          style: textPrimary,
        ),
      ),
    );
  }
}

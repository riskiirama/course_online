import 'package:flutter/material.dart';
import 'package:online_course/theme.dart';
import 'package:online_course/widgets/list_detail.dart';

class Detail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Row(
        children: [
          GestureDetector(
            onTap: () {
              print('object');
              Navigator.maybePop(context);
            },
            child: Image.asset(
              'assets/icon_back.png',
              width: 26,
            ),
          ),
          SizedBox(width: 85),
          Text(
            'Course Details',
            style: textPrimary.copyWith(
              fontSize: 14,
              fontWeight: semiBold,
            ),
          ),
          Spacer(),
          Image.asset(
            'assets/icon_samping.png',
            width: 26,
          ),
        ],
      );
    }

    Widget cardDetail() {
      return Container(
        margin: EdgeInsets.only(top: 26),
        width: double.infinity,
        height: 227,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Color(0xffFFFFFF),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            'assets/image1.png',
            width: 200,
            fit: BoxFit.cover,
          ),
        ),
      );
    }

    Widget titleDetail() {
      return Container(
        margin: EdgeInsets.only(top: 24),
        child: Text(
          'UI Design : Wireframe to\nVisual Design',
          style: textPrimary.copyWith(
            fontSize: 18,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget mentor() {
      return Container(
        margin: EdgeInsets.only(top: 12),
        child: Row(
          children: [
            ClipOval(
              child: Image.asset(
                'assets/image_mentor.png',
                width: 36,
              ),
            ),
            SizedBox(width: 6),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Shem Bizo',
                  style: textPrimary.copyWith(
                    fontWeight: bold,
                  ),
                ),
                Text(
                  'Mentor UI Designer',
                  style: textSecondary.copyWith(
                    fontWeight: medium,
                  ),
                ),
              ],
            ),
            Spacer(),
            Image.asset(
              'assets/icon_right.png',
              width: 24,
            )
          ],
        ),
      );
    }

    Widget listDetail() {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            ListDetail('About'),
            SizedBox(width: 12),
            ListDetail('Lesson'),
            SizedBox(width: 12),
            ListDetail('Tools'),
            SizedBox(width: 12),
            ListDetail('Resource'),
            SizedBox(width: 12),
            ListDetail('Reviews'),
            SizedBox(width: 12),
          ],
        ),
      );
    }

    Widget courseList() {
      return Container(
        margin: EdgeInsets.only(top: 12),
        child: Text(
          'Course List',
          style: textPrimary.copyWith(
            fontSize: 12,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget listView() {
      return Container(
        margin: EdgeInsets.only(top: 6),
        width: double.infinity,
        height: 307,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Color(0xffFFFFFF),
        ),
      );
    }

    Widget navbar() {
      return Row(
        children: [
          Material(
            elevation: 10,
            child: Container(
              margin: EdgeInsets.only(left: 24),
              padding: EdgeInsets.only(right: 20),
              height: 70,
              width: 130,
              color: Color(0xffFFFFFF),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Price',
                    style: textSecondary.copyWith(
                      fontSize: 12,
                      fontWeight: medium,
                    ),
                  ),
                  Text(
                    'Free',
                    style: textGreen.copyWith(
                      fontSize: 18,
                      fontWeight: semiBold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Material(
            elevation: 10,
            child: Container(
              padding: EdgeInsets.only(right: 20),
              height: 70,
              width: 256,
              decoration: BoxDecoration(
                  color: blueColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                  )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Start Course',
                    style: textSecondary.copyWith(
                      fontSize: 14,
                      fontWeight: semiBold,
                      color: Color(0xffFFFFFF),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      );
    }

    return Scaffold(
      bottomNavigationBar: navbar(),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(left: 24, top: 27, right: 24),
          child: ListView(
            children: [
              header(),
              cardDetail(),
              titleDetail(),
              mentor(),
              listDetail(),
              courseList(),
              listView(),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:online_course/theme.dart';
import 'package:online_course/widgets/card_aticles.dart';
import 'package:online_course/widgets/card_popular.dart';
import 'package:online_course/widgets/card_study.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Row(
        children: [
          Image.asset(
            'assets/image_profile.png',
            width: 30,
          ),
          Spacer(),
          Image.asset(
            'assets/icon_search.png',
            width: 26,
          ),
          SizedBox(width: 12),
          Image.asset(
            'assets/icon_notif.png',
            width: 26,
          )
        ],
      );
    }

    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 16),
        child: Text(
          'Want to Study Class\n what\'s Today?',
          style: textPrimary.copyWith(
            fontSize: 18,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget study() {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            CardDetail(
              'assets/icon_desain.png',
              'Desain',
              '49 Course',
            ),
            SizedBox(width: 12),
            CardDetail(
              'assets/icon_softskill.png',
              'Soft Skill',
              '12 Course',
            ),
            SizedBox(width: 12),
            CardDetail(
              'assets/icon_art.png',
              'Art',
              '50 Course',
            )
          ],
        ),
      );
    }

    Widget poplularCourse() {
      return Container(
        margin: EdgeInsets.only(top: 24),
        child: Row(
          children: [
            Text(
              'Popular Course',
              style: textPrimary.copyWith(
                fontSize: 14,
                fontWeight: semiBold,
              ),
            ),
            Spacer(),
            GestureDetector(
              onTap: () {
                print("hello");
              },
              child: Text(
                'Show all',
                style: textPrimary.copyWith(
                  fontSize: 10,
                  fontWeight: medium,
                  color: blueColor,
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget cardPopular() {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/detail');
          },
          child: Row(
            children: [
              CardPopular(
                'assets/image1.png',
                'UI Design : Wireframe\nto Visual Design',
                '(4016)',
              ),
              SizedBox(width: 12),
              CardPopular(
                'assets/image2.png',
                'UI Design : Styleguide\nwith Figma',
                '(1055)',
              ),
            ],
          ),
        ),
      );
    }

    Widget articles() {
      return Container(
        margin: EdgeInsets.only(top: 24),
        child: Row(
          children: [
            Text(
              'Articles',
              style: textPrimary.copyWith(
                fontSize: 14,
                fontWeight: semiBold,
              ),
            ),
            Spacer(),
            GestureDetector(
              onTap: () {
                print("hello");
              },
              child: Text(
                'Show all',
                style: textPrimary.copyWith(
                  fontSize: 10,
                  fontWeight: medium,
                  color: blueColor,
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget cardArtcles() {
      return Column(
        children: [
          CardAticles(),
          SizedBox(height: 12),
          CardAticles(),
        ],
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: ListView(
        padding: EdgeInsets.only(top: 44, left: 24, right: 24),
        children: [
          header(),
          title(),
          study(),
          poplularCourse(),
          cardPopular(),
          articles(),
          cardArtcles(),
        ],
      ),
    );
  }
}

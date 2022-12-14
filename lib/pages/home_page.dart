import 'package:flutter/material.dart';
import 'package:job/theme.dart';
import 'package:job/widgets/category_card.dart';
import 'package:job/widgets/job_tile.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hi,',
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'Mochammad Faris',
                      style: blackTextStyle.copyWith(
                          fontSize: 24, fontWeight: semiBold),
                    ),
                  ],
                ),
                Container(
                    width: 58,
                    height: 58,
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: greyColor),
                    ),
                    child: Image.asset('assets/icon_user.png'))
              ],
            )
          ],
        ),
      );
    }

    Widget hotCategories() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: defaultMargin,
            ),
            child: Text(
              'Hot Categories',
              style: blackTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(
                  width: defaultMargin,
                ),
                CategoryCard(
                  imageUrl: 'assets/image_category1.png',
                  name: 'Web Developer',
                ),
                CategoryCard(
                  imageUrl: 'assets/image_category2.png',
                  name: 'Mobile Developer',
                ),
                CategoryCard(
                  imageUrl: 'assets/image_category3.png',
                  name: 'App Designer',
                ),
                CategoryCard(
                  imageUrl: 'assets/image_category4.png',
                  name: 'Content Writer',
                ),
                CategoryCard(
                  imageUrl: 'assets/image_category5.png',
                  name: 'Video Grapher',
                ),
              ],
            ),
          )
        ],
      );
    }

    Widget justPosted() {
      return Container(
        padding: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Just Posted',
              style: blackTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 24,
            ),
            JobTile(
              companyLogo: 'assets/icon_google.png',
              name: 'Front-End Developer',
              companyName: 'Google',
            ),
            JobTile(
              companyLogo: 'assets/icon_instagram.png',
              name: 'Back-end Developer',
              companyName: 'Instagram',
            ),
            JobTile(
              companyLogo: 'assets/icon_facebook.png',
              name: 'Data Scantist',
              companyName: 'Facebook',
            ),
          ],
        ),
      );
    }

    Widget bottomNavBar() {
      return BottomNavigationBar(
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icon_home.png',
              width: 24,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icon_notification.png',
              width: 24,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icon_love.png',
              width: 24,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icon_user.png',
              width: 24,
            ),
            label: '',
          ),
        ],
      );
    }

    Widget body() {
      return ListView(
        children: [header(), hotCategories(), justPosted()],
      );
    }

    return Scaffold(
      bottomNavigationBar: bottomNavBar(),
      body: body(),
    );
  }
}

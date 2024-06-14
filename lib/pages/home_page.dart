import 'package:flutter/material.dart';
import 'package:masjidkorea/pages/blog.dart';
import 'package:masjidkorea/theme.dart';
import 'package:masjidkorea/widgets/bottom_navbar.dart';
import 'package:masjidkorea/widgets/city.dart';
import 'package:masjidkorea/widgets/citycard.dart';
import 'package:masjidkorea/widgets/space_card.dart';
import 'package:masjidkorea/widgets/tips.dart';
import 'package:masjidkorea/widgets/tips_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            SizedBox(
              height: edge,
            ),
            // NOTE: TITLE/HEADER
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Explore Now',
                style: blackTextStyle.copyWith(
                  fontSize: 24,
                ),
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Yuk ke Masjid terdekat',
                style: greyTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),

            // NOTE: POPULAR CITIES
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Masjid yang Populer',
                style: regularTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(
                    width: 24,
                  ),
                  CityCard(
                    City(
                      id: 1,
                      name: 'Gwangju',
                      imageUrl: 'assets/alishlah1.jpeg',
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    City(
                      id: 2,
                      name: 'Busan',
                      imageUrl: 'assets/busan.jpg',
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    City(
                      id: 3,
                      name: 'Seoul',
                      imageUrl: 'assets/itaewon.jpg',
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    City(
                      id: 4,
                      name: 'Daegu',
                      imageUrl: 'assets/daegu.jpeg',
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    City(
                      id: 5,
                      name: 'Ansan',
                      imageUrl: 'assets/ansan.jpg',
                    ),
                  ),
                ],
              ),
            ),

            // NOTE: RECOMMENDED SPACE
            Padding(
              padding: EdgeInsets.only(left: edge, top: edge),
              child: Text(
                'Rekomendasi Masjid',
                style: regularTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: edge,
              ),
              child: const SpaceCard(
                'Seoul',
                'South Korea',
                'assets/itaewon.jpg',
                4.5,
                'Masjid Itaewon Seoul',
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: edge,
              ),
              child: const SpaceCard(
                'Gwangju',
                'South Korea',
                'assets/alishlah1.jpeg',
                4.5,
                'Masjid Al Ishlah Pyeongdong',
              ),
            ),
            // NOTE: TIPS & GUIDANCE
            Padding(
              padding: EdgeInsets.only(left: edge, top: 20),
              child: Text(
                'Tips & Guidance',
                style: regularTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: edge,
              ),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BlogPage()),
                      );
                    },
                    child: TipsCard(
                      Tips(
                        id: 1,
                        title: 'Tips Berkunjung ke Masjid',
                        imageUrl: 'assets/tips1.png',
                        updatedAt: '10 Jun',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TipsCard(
                    Tips(
                      id: 2,
                      title: 'Tips bepergian \ndi Korea Selatan',
                      imageUrl: 'assets/tips2.png',
                      updatedAt: '11 Jun',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100 + edge,
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 65,
        width: MediaQuery.of(context).size.width - (2 * edge),
        margin: EdgeInsets.symmetric(
          horizontal: edge,
        ),
        decoration: BoxDecoration(
          color: Color(0xffF6F7F8),
          borderRadius: BorderRadius.circular(23),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavbarItem(
              imageUrl: 'assets/icon_home.png',
              isActive: true,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/icon_email.png',
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/icon_card.png',
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/icon_love.png',
              isActive: false,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

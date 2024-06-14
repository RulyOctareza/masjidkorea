import 'package:flutter/material.dart';
import 'package:masjidkorea/pages/detail_page.dart';

import '../theme.dart';

class SpaceCard extends StatelessWidget {
  final String imgUrl;
  final double rating;
  final String city;
  final String country;
  final String name;
  // final Space space;

  const SpaceCard(this.city, this.country, this.imgUrl, this.rating, this.name,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(),
          ),
        );
      },
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: Container(
              width: 130,
              height: 110,
              child: Stack(
                children: [
                  Image.asset(
                    imgUrl,
                    width: 130,
                    height: 110,
                    fit: BoxFit.cover,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 70,
                      height: 30,
                      decoration: BoxDecoration(
                        color: purpleColor,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(36),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/icon_star.png',
                            width: 22,
                            height: 22,
                          ),
                          Text(
                            rating.toString(),
                            style: whiteTextStyle.copyWith(
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: blackTextStyle.copyWith(
                    fontSize: 12, overflow: TextOverflow.clip),
              ),
              SizedBox(
                height: 8,
              ),
              Text('$city, $country',
                  style: greyTextStyle.copyWith(
                    fontSize: 12,
                  )),
            ],
          ),
        ],
      ),
    );
  }
}

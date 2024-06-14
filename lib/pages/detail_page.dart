import 'package:flutter/material.dart';
import 'package:masjidkorea/theme.dart';
import 'package:masjidkorea/widgets/facility_item.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  Future<void> openKakaoMap() async {
    final Uri url = Uri.parse('https://place.map.kakao.com/1866898298');
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
          bottom: false,
          child: Stack(
            children: [
              Image.asset(
                'assets/alishlah1.jpeg',
                width: MediaQuery.of(context).size.width,
                height: 350,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: edge,
                  vertical: 30,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset(
                        'assets/btn_back.png',
                        width: 40,
                      ),
                    ),
                    Image.asset(
                      'assets/btn_wishlist.png',
                      width: 40,
                    ),
                  ],
                ),
              ),
              ListView(
                children: [
                  const SizedBox(
                    height: 328,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(20),
                        ),
                        color: whiteColor),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: edge,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Masjid Al Ishlah \nPyeongdong',
                                    style: blackTextStyle.copyWith(
                                        fontSize: 22, color: blackColor),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    'Gwangju, Jeollanam-do',
                                    style: greyTextStyle.copyWith(
                                        fontSize: 14, color: greyColor),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/icon_star.png',
                                    width: 22,
                                    height: 22,
                                  ),
                                  Text(
                                    '4.5',
                                    style: blackTextStyle.copyWith(
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: edge),
                          child: Text(
                            'Main Facilities',
                            style: regularTextStyle.copyWith(
                              fontSize: 16,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: edge,
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FacilityItem(
                                name: 'kitchen',
                                imageUrl: 'assets/icon_kitchen.png',
                                status: 'Ada',
                              ),
                              FacilityItem(
                                name: 'bedroom',
                                imageUrl: 'assets/icon_bedroom.png',
                                status: 'Ada',
                              ),
                              FacilityItem(
                                name: 'Lemari',
                                imageUrl: 'assets/icon_cupboard.png',
                                status: 'Ada',
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: edge),
                          child: Text(
                            'Photos',
                            style: regularTextStyle.copyWith(
                              fontSize: 16,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Container(
                          height: 88,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              const SizedBox(width: 24),
                              Image.asset(
                                'assets/photo1.png',
                                width: 110,
                                height: 88,
                                fit: BoxFit.cover,
                              ),
                              const SizedBox(width: 18),
                              Image.asset(
                                'assets/photo2.png',
                                width: 110,
                                height: 88,
                                fit: BoxFit.cover,
                              ),
                              const SizedBox(width: 18),
                              Image.asset(
                                'assets/photo3.png',
                                width: 110,
                                height: 88,
                                fit: BoxFit.cover,
                              ),
                              const SizedBox(width: 18),
                              Image.asset(
                                'assets/photo3.png',
                                width: 110,
                                height: 88,
                                fit: BoxFit.cover,
                              ),
                              const SizedBox(width: 18),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: edge),
                          child: Text(
                            'Location',
                            style: regularTextStyle.copyWith(
                              fontSize: 16,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: edge),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Pyeongdong 4, Gwangsan-gu, \nGwangju Gwangyoksi',
                                style: greyTextStyle,
                              ),
                              Image.asset(
                                'assets/btn_map.png',
                                width: 40,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: edge),
                          height: 50,
                          width: MediaQuery.of(context).size.width - (2 * edge),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              openKakaoMap();
                            },
                            child: Text(
                              'Gass Kesana !',
                              style: whiteTextStyle,
                            ),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: purpleColor),
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          )),
    );
  }
}

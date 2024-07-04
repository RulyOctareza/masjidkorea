import 'package:flutter/material.dart';
import 'package:masjidkorea/models/masjid_model.dart';
import 'package:masjidkorea/pages/gallery_pages.dart';
import 'package:masjidkorea/theme.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPage extends StatefulWidget {
  final MasjidModel masjid;

  const DetailPage(this.masjid, {super.key});

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool isFavorited = false;

  Future<void> openKakaoMap() async {
    final Uri url = Uri.parse(widget.masjid.address);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          backgroundColor: whiteColor,
          onPressed: () {
            setState(() {
              isFavorited = !isFavorited;
            });
          },
          child: Container(
              width: 56.0, // ukuran tombol FloatingActionButton default
              height: 56.0, // ukuran tombol FloatingActionButton default
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage(
                        isFavorited
                            ? 'assets/btn_wishlist_active.png'
                            : 'assets/btn_wishlist.png',
                      ),
                      fit: BoxFit.cover)))),
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Image.network(
              widget.masjid.imageUrl,
              width: MediaQuery.of(context).size.width,
              height: 350,
              fit: BoxFit.cover,
              semanticLabel: 'Name of Masjid',
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: edge,
                vertical: 30,
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [],
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
                    color: whiteColor,
                  ),
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
                            SizedBox(
                              width: 200,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    widget.masjid.name,
                                    style: blackTextStyle.copyWith(
                                      fontSize: 22,
                                      color: blackColor,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    widget.masjid.city,
                                    style: greyTextStyle.copyWith(
                                      fontSize: 14,
                                      color: greyColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Image.asset(
                                    'assets/btn_back.png',
                                    width: 40,
                                  ),
                                ),
                                Image.asset(
                                  'assets/icon_star.png',
                                  width: 28,
                                  height: 28,
                                ),
                                const SizedBox(
                                  width: 6,
                                ),
                                Text(
                                  widget.masjid.rating.toString(),
                                  style: blackTextStyle.copyWith(
                                    fontSize: 18,
                                  ),
                                ),
                              ],
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
                      SizedBox(
                        height: 88,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        GalleryPage(widget.masjid)));
                          },
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              const SizedBox(width: 24),
                              Image.network(
                                widget.masjid.photos1,
                                width: 110,
                                height: 88,
                                fit: BoxFit.cover,
                              ),
                              const SizedBox(width: 18),
                              Image.network(
                                widget.masjid.photos2,
                                width: 110,
                                height: 88,
                                fit: BoxFit.cover,
                              ),
                              const SizedBox(width: 18),
                              Image.network(
                                widget.masjid.photos3,
                                width: 110,
                                height: 88,
                                fit: BoxFit.cover,
                              ),
                              const SizedBox(width: 18),
                              Image.network(
                                widget.masjid.photos4,
                                width: 110,
                                height: 88,
                                fit: BoxFit.cover,
                              ),
                              const SizedBox(width: 18),
                            ],
                          ),
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
                            SizedBox(
                              width: 200,
                              child: Text(
                                widget.masjid.location,
                                style: greyTextStyle.copyWith(
                                    overflow: TextOverflow.clip),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                openKakaoMap();
                              },
                              child: Image.asset(
                                'assets/btn_map.png',
                                width: 40,
                              ),
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
                            backgroundColor: purpleColor,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

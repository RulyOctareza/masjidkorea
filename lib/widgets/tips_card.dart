import 'package:flutter/material.dart';
import 'package:masjidkorea/theme.dart';
import 'package:masjidkorea/widgets/tips.dart';

class TipsCard extends StatelessWidget {
  final Tips tips;

  const TipsCard(this.tips, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          tips.imageUrl,
          width: 80,
        ),
        const SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 155,
              child: Text(
                tips.title,
                style: blackTextStyle.copyWith(
                  fontSize: 14,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              'Updated ${tips.updatedAt}',
              style: greyTextStyle,
            ),
          ],
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.chevron_right,
            color: greyColor,
          ),
        ),
      ],
    );
  }
}

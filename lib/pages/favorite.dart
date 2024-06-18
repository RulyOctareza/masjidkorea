import 'package:flutter/material.dart';
import 'package:masjidkorea/models/favorite_provider.dart';
import 'package:provider/provider.dart';
import 'package:masjidkorea/widgets/tips_card.dart';

class FavoritePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final favoriteProvider = Provider.of<FavoriteProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Favorites'),
      ),
      body: ListView.builder(
        itemCount: favoriteProvider.favorites.length,
        itemBuilder: (context, index) {
          final tip = favoriteProvider.favorites[index];
          return TipsCard(tip);
        },
      ),
    );
  }
}

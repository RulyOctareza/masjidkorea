import 'package:flutter/material.dart';

class GalleryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gallery'),
      ),
      body: Container(
        height: 88,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            const SizedBox(width: 24),
            _buildImageAsset('assets/photo1.png', context),
            const SizedBox(width: 18),
            _buildImageAsset('assets/photo2.png', context),
            const SizedBox(width: 18),
            _buildImageAsset('assets/photo3.png', context),
            const SizedBox(width: 18),
            _buildImageAsset('assets/photo3.png', context),
            const SizedBox(width: 18),
          ],
        ),
      ),
    );
  }

  Widget _buildImageAsset(String assetName, BuildContext context) {
    return GestureDetector(
      onTap: () {
        _showImageDialog(assetName, context);
      },
      child: Image.asset(
        assetName,
        width: 110,
        height: 88,
        fit: BoxFit.cover,
      ),
    );
  }

  void _showImageDialog(String assetName, BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Container(
              width: double.infinity,
              height: 300,
              child: Image.asset(
                assetName,
                fit: BoxFit.cover,
              ),
            ),
          ),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nft_ui/screens/nft_screen.dart';

class ImageView extends StatelessWidget {
  final String image;
  const ImageView({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return NftScreen(image: image);
          },
        ));
      },
      child: Hero(
        tag: image,
        child: Image.asset(
          image,
          width: 130,
        ),
      ),
    );
  }
}

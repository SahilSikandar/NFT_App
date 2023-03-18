import 'package:flutter/material.dart';
import 'package:nft_ui/utilis/sized_Box.dart';

class InfoTile extends StatelessWidget {
  const InfoTile({Key? key, required this.title, required this.subtitle})
      : super(key: key);
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        5.ph,
        Text(
          subtitle,
          style: TextStyle(
            color: Colors.white70,
          ),
        ),
      ],
    );
  }
}

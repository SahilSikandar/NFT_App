import 'package:flutter/material.dart';
import 'package:nft_ui/animations/animations.dart';
//import 'package:nft_ui/utilis/sized_Box.dart';
import 'package:nft_ui/widgets/blur_container.dart';
import 'package:nft_ui/widgets/info_tile.dart';

class NftScreen extends StatelessWidget {
  final String image;
  const NftScreen({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.asset(image),
              Positioned(
                  left: 10,
                  bottom: 10,
                  child: FadeAnimation(
                    intervalEnd: 0.2,
                    child: BlurContainer(
                        child: Container(
                      width: 170,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white.withOpacity(0.1)),
                      child: Center(
                          child: Text(
                        'Digital Nft Art',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      )),
                    )),
                  )),
            ],
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: FadeAnimation(
              intervalStart: 0.3,
              child: Text(
                "Funky_monkey",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 9.0),
            child: FadeAnimation(
              intervalStart: 0.3,
              child: Text(
                'Owned by nft_maker',
                style: TextStyle(color: Colors.white70),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: FadeAnimation(
              intervalStart: 0.3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InfoTile(title: '10d 5h 23m', subtitle: 'Remaining Time'),
                  InfoTile(title: '8.7 ETH', subtitle: 'Heighest Bid'),
                ],
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FadeAnimation(
              intervalStart: 0.6,
              child: Container(
                width: double.infinity,
                height: 60,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Color(0xff3000ff),
                    borderRadius: BorderRadius.circular(10)),
                child: FadeAnimation(
                  intervalStart: 0.8,
                  child: Text(
                    "Place Bid",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 12,
          )
        ],
      ),
    );
  }
}

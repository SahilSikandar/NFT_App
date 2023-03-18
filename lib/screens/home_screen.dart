import 'package:flutter/material.dart';
import 'package:nft_ui/animations/fade_animation.dart';
import 'package:nft_ui/utilis/sized_Box.dart';
import 'package:nft_ui/widgets/image_tile.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0Xff010101),
      body: Stack(
        children: [
          Positioned.fill(
              child: ShaderMask(
            blendMode: BlendMode.dstOut,
            shaderCallback: (bounds) {
              return LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.transparent,
                  Colors.black.withOpacity(0.8),
                  Colors.black.withOpacity(0.9),
                  Colors.black,
                ],
                stops: [0, 0.62, 0.67, 0.85, 1],
              ).createShader(bounds);
            },
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ImageTile(
                    startIndex: 1,
                    duration: 25,
                  ),
                  10.ph,
                  ImageTile(
                    startIndex: 11,
                    duration: 45,
                  ),
                  10.ph,
                  ImageTile(
                    startIndex: 21,
                    duration: 65,
                  ),
                  10.ph,
                  ImageTile(
                    startIndex: 31,
                    duration: 30,
                  ),
                ],
              ),
            ),
          )),
          Positioned(
              bottom: 60,
              left: 24,
              right: 24,
              child: Container(
                height: 170,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FadeAnimation(
                      intervalStart: 0.3,
                      child: Text(
                        "Art With NFTs",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                    12.ph,
                    FadeAnimation(
                      intervalStart: 0.3,
                      child: Text(
                        "Chech Out this raffle for you guys only! new coin minted show love",
                        style: TextStyle(
                            color: Colors.white70,
                            fontWeight: FontWeight.bold,
                            height: 1.2),
                      ),
                    ),
                    Spacer(),
                    FadeAnimation(
                      intervalStart: 0.6,
                      child: Container(
                        width: 140,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Color(0xff3000ff),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: FadeAnimation(
                            intervalStart: 0.8,
                            child: Text(
                              'Discover',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}

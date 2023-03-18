import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

import 'image_view.dart';

class ImageTile extends StatefulWidget {
  final int startIndex;
  final int duration;
  const ImageTile(
      {super.key, required this.startIndex, required this.duration});

  @override
  State<ImageTile> createState() => _ImageTileState();
}

class _ImageTileState extends State<ImageTile> {
  late ScrollController _scrollController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      if (_scrollController.position.atEdge) {
        _autoScroll();
      }
    });
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _autoScroll();
    });
  }

  _autoScroll() {
    final _currentscrollPosition = _scrollController.offset;
    final _scrollEndPosition = _scrollController.position.maxScrollExtent;
    scheduleMicrotask(
      () {
        _scrollController.animateTo(
            _currentscrollPosition == _scrollEndPosition
                ? 0
                : _scrollEndPosition,
            duration: Duration(seconds: widget.duration),
            curve: Curves.linear);
      },
    );
  }

  //int startIndex=0;
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: 1.96 * pi,
      child: SizedBox(
        height: 150,
        child: ListView.builder(
          itemCount: 10,
          controller: _scrollController,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, int index) {
            return ImageView(
                image: 'assets/images/${widget.startIndex + index}.png');
          },
        ),
      ),
    );
  }
}

import 'dart:async';

import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  final String src;
  const ImagePage({super.key, required this.src});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 200,
      child: Image.network(
        src,
        fit: BoxFit.fill,
      ),
    );
  }
}

class Swiper extends StatefulWidget {
  final double height;
  final List<String> list;
  const Swiper({super.key, this.height = 200, required this.list});

  @override
  State<Swiper> createState() => _SwiperState();
}

class _SwiperState extends State<Swiper> {
  var current = 0;
  List<Widget> pageList = [];
  late PageController _pageController;
  late Timer timer;

  @override
  void initState() {
    super.initState();
    for (var i = 0; i < 3; i++) {
      pageList.add(ImagePage(src: widget.list[i]));
    }

    //
    _pageController = PageController(initialPage: 0);

    timer = Timer.periodic(const Duration(seconds: 3), (t) {
      _pageController.animateToPage(
        current < pageList.length - 1 ? current + 1 : 0,
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    timer.cancel();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 200,
          child: PageView(
            controller: _pageController,
            children: pageList,
            onPageChanged: (value) {
              setState(() {
                current = value;
              });
            },
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 2,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(pageList.length, (index) {
                return Container(
                  margin: const EdgeInsets.all(5),
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    color: current == index ? Colors.red : Colors.grey,
                    borderRadius: BorderRadius.circular(5),
                  ),
                );
              }).toList()),
        )
      ],
    );
  }
}

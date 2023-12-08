import 'package:flutter/material.dart';
import 'package:flutter2/pages/imagepage.dart';

class PageViewSwiper extends StatefulWidget {
  const PageViewSwiper({super.key});

  @override
  State<PageViewSwiper> createState() => _PageViewSwiperState();
}

class _PageViewSwiperState extends State<PageViewSwiper> {
  final List<Widget> list = [];
  var current = 0;
  final imagesList = [
    'https://images.unsplash.com/photo-1561152092-12f18f8a222a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
    'https://images.unsplash.com/photo-1445964047600-cdbdb873673d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1156&q=80',
    'https://images.unsplash.com/photo-1462275646964-a0e3386b89fa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1100&q=80'
  ];
  @override
  void initState() {
    super.initState();
    for (var i = 0; i < 3; i++) {
      list.add(ImagePage(src: imagesList[i]));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('PageViewSwiper'),
        ),
        body: Stack(
          children: [
            SizedBox(
              height: 200,
              child: PageView(
                children: list,
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
                  children: List.generate(list.length, (index) {
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
        ));
  }
}

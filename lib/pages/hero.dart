import 'package:flutter/material.dart';
import 'package:flutter2/pages/listData.dart';
// import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

class HeroPage extends StatefulWidget {
  final Map arguments;
  const HeroPage({super.key, required this.arguments});

  @override
  State<HeroPage> createState() => _HeroPageState();
}

class _HeroPageState extends State<HeroPage> {
  var page = 1;

  @override
  void initState() {
    super.initState();
    page = int.parse(widget.arguments['key']) + 1;
  }

  @override
  Widget build(BuildContext context) {
    print(widget.arguments['key'].runtimeType);
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Hero(
          tag: widget.arguments['heroTag'],
          child: Stack(
            children: [
              Scaffold(
                backgroundColor: Colors.black,
                // appBar: AppBar(
                //   title: Text(widget.arguments['title']),
                // ),
                body: Center(
                  child: Container(
                    margin: const EdgeInsets.all(10.0), // 调整边距
                    child: PhotoViewGallery.builder(
                      // scrollPhysics: const BouncingScrollPhysics(),
                      itemCount: myListData.length,
                      pageController: PageController(
                          initialPage: int.parse(widget.arguments['key'])),
                      onPageChanged: (index) {
                        print(index);
                        setState(() {
                          page = index + 1;
                        });
                      },
                      builder: (context, index) {
                        return PhotoViewGalleryPageOptions(
                            imageProvider:
                                NetworkImage(myListData[index]['imageUrl']));
                      },
                    ),
                  ),
                ),
              ),
              Positioned(
                  bottom: 150,
                  right: 0,
                  left: 0,
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      '$page/${myListData.length}',
                      style: const TextStyle(
                          color: Colors.amber,
                          fontSize: 30,
                          decoration: TextDecoration.none),
                    ),
                  ))
            ],
          )),
    );
  }
}

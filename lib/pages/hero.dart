import 'package:flutter/material.dart';

class HeroPage extends StatefulWidget {
  final Map arguments;
  const HeroPage({super.key, required this.arguments});

  @override
  State<HeroPage> createState() => _HeroPageState();
}

class _HeroPageState extends State<HeroPage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.arguments['title']),
        ),
        body: Center(
          child: Container(
            margin: const EdgeInsets.all(10.0), // 调整边距
            child: AspectRatio(
              aspectRatio: 16 / 10,
              child: Hero(
                tag: widget.arguments['heroTag'],
                child: Image.network(widget.arguments['imageUrl']),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

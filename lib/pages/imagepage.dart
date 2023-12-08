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

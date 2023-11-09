import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Material App Bar'),
          ),
          body: Scrollbar(
            child: ListView(
              children: const [
                Column(
                  children: [
                    MyCircular(),
                    SizedBox(height: 20), // 配置区块的组件
                    MyAppBody(),
                    SizedBox(height: 20),
                    MyClipImage(),
                    SizedBox(height: 30),
                    LocalImage(),
                  ],
                )
              ],
            ),
          ))));
}

class MyAppBody extends StatelessWidget {
  const MyAppBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      height: 550,
      width: 550,
      decoration: const BoxDecoration(
        color: Colors.amber,
      ),
      child: Image.network(
        'https://thumbs.dreamstime.com/z/portrait-young-beautiful-girl-fashion-photo-29870052.jpg',
        // alignment: Alignment.centerLeft,
        // fit: BoxFit.cover,
        // repeat: ImageRepeat.repeatY,
      ),
    ));
  }
}

class MyCircular extends StatelessWidget {
  const MyCircular({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      margin: const EdgeInsets.fromLTRB(0, 20, 20, 0),
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.circular(75),
        image: const DecorationImage(
            image: NetworkImage(
                'https://media.istockphoto.com/id/1276580714/zh/%E7%85%A7%E7%89%87/3d-%E6%B8%B2%E6%9F%93-%E6%8A%BD%E8%B1%A1%E7%9A%84%E6%9C%80%E5%B0%8F%E8%83%8C%E6%99%AF-%E7%B2%89%E7%B4%85%E8%89%B2%E8%97%8D%E8%89%B2%E9%9C%93%E8%99%B9%E7%87%88%E6%96%B9%E5%BD%A2%E6%A1%86%E6%9E%B6%E8%88%87%E8%A4%87%E8%A3%BD%E7%A9%BA%E9%96%93-%E7%85%A7%E4%BA%AE%E9%A2%A8%E6%9A%B4%E9%9B%B2-%E7%99%BC%E5%85%89%E7%9A%84%E5%B9%BE%E4%BD%95%E5%BD%A2%E7%8B%80.jpg?s=1024x1024&w=is&k=20&c=jfCqkIsGCUnJQZ3L6TkNOTf8pcXknAAo1gfFHHSEmL0='),
            // AssetImage('assets/images/1.png'),
            fit: BoxFit.cover),
      ),
    );
  }
}

// 实现一个圆形图片 使用ClipOval
class MyClipImage extends StatelessWidget {
  const MyClipImage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.network(
          'https://media.istockphoto.com/id/1481468103/zh/%E7%85%A7%E7%89%87/wind-turbines-in-the-sea.jpg?s=1024x1024&w=is&k=20&c=yDiA4sk6lg1dp04CgixflVVYeH_3RU8zWXWbagSzAGk=',
          width: 150,
          height: 150,
          fit: BoxFit.cover),
    );
  }
}

// 加载本地图片
class LocalImage extends StatelessWidget {
  const LocalImage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 300,
        height: 300,
        decoration: const BoxDecoration(
          color: Colors.amber,
        ),
        child: Image.asset('images/demo1.jpg', fit: BoxFit.cover));
  }
}

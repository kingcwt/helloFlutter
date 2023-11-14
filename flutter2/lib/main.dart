/// StatefulWidget 有状态组件传值
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      theme: ThemeData(primarySwatch: Colors.yellow), home: const HomePage()));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int countNum = 0;
  onPressed() {
    setState(() {
      countNum++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: MyBody(countNum, onPressed),
      floatingActionButton: FloatingActionButton(
        onPressed: onPressed,
        child: const Icon(Icons.add),
      ),
    );
  }
}

class MyBody extends StatefulWidget {
  final int countNum;
  final VoidCallback onPressed;
  const MyBody(this.countNum, this.onPressed, {super.key});

  @override
  State<MyBody> createState() => _MyBodyState();
}

class _MyBodyState extends State<MyBody> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(children: [
          Text('${widget.countNum}',
              style: const TextStyle(
                fontSize: 28,
              )),
          const SizedBox(height: 100),
          ElevatedButton(onPressed: widget.onPressed, child: const Text('add'))
        ])
      ],
    ));
  }
}
// class MyBody extends StatelessWidget {
//   int countNum = 0;
//   MyBody({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return (Center(
//         child: Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Column(children: [
//           Text('$countNum',
//               style: const TextStyle(
//                 fontSize: 28,
//               )),
//           const SizedBox(height: 100),
//           ElevatedButton(
//               onPressed: () {
//                 countNum++;
//                 print(countNum);
//               },
//               child: const Text('add'))
//         ])
//       ],
//     )));
//   }
// }

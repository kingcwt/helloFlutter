/// AnimatedContainer
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  bool flag = true;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
      // lowerBound: 0.5,
      // upperBound: 1.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Demo12'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            flag ? _controller.forward() : _controller.reverse();
            flag = !flag;
          },
          child: const Icon(Icons.add),
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            SlideTransition(
                position: _controller.drive(Tween(
                        begin: const Offset(0.0, 0.0),
                        end: const Offset(1.0, 0.0))
                    .chain(CurveTween(curve: const Interval(0.0, 0.2)))),
                child: Container(
                  width: 120,
                  height: 60,
                  color: Colors.blue[300],
                )),
            SlideTransition(
                position: _controller.drive(Tween(
                        begin: const Offset(0.0, 0.0),
                        end: const Offset(1.0, 0.0))
                    .chain(CurveTween(curve: const Interval(0.2, 0.4)))),
                child: Container(
                  width: 120,
                  height: 60,
                  color: Colors.blue[500],
                )),
            SlidingBox(
              color: Colors.blue[700],
              controller: _controller,
              curve: const Interval(0.4, 0.6),
            ),
            SlidingBox(
              color: Colors.blue[900],
              controller: _controller,
              curve: const Interval(0.6, 0.8),
            ),
          ]),
        ));
  }
}

class SlidingBox extends StatefulWidget {
  final AnimationController controller;
  final Color? color;
  final Curve curve;
  const SlidingBox(
      {super.key,
      required this.controller,
      required this.color,
      required this.curve});
  @override
  State<SlidingBox> createState() => _SlidingBoxState();
}

class _SlidingBoxState extends State<SlidingBox> {
  @override
  Widget build(BuildContext context) {
    return SlideTransition(
        position: widget.controller.drive(
            Tween(begin: const Offset(0.0, 0.0), end: const Offset(1.0, 0.0))
                .chain(CurveTween(curve: widget.curve))),
        child: Container(
          width: 120,
          height: 60,
          color: widget.color,
        ));
  }
}

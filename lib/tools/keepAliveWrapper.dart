import 'package:flutter/material.dart';

class KeepAliveWrapper extends StatefulWidget {
  final Widget? child;
  final bool keepAlive;

  const KeepAliveWrapper(
      {super.key, required this.child, this.keepAlive = true});

  @override
  State<KeepAliveWrapper> createState() => KeepAliveWrapperState();
}

class KeepAliveWrapperState extends State<KeepAliveWrapper>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    return widget.child!;
  }

  @override
  bool get wantKeepAlive => widget.keepAlive;
}

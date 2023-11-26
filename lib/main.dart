import 'package:flutter/material.dart';
import './pages/tabs.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.purple),
    home: const Tabs(),
  ));
}

import 'package:flutter/material.dart';
import './pages/tabs.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.purple),
    home: const Tabs(),
  ));
}

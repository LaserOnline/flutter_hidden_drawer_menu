import 'package:flutter/material.dart';
import 'package:flutter_hidden_drawer_menu/widget/Home.dart';
import 'package:flutter_hidden_drawer_menu/widget/drawer/hidden_drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HiddenDrawer(),
    );
  }
}

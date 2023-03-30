import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hidden_drawer_menu/widget/Home.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({Key? key}) : super(key: key);

  @override
  State<HiddenDrawer> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HiddenDrawer> {
  List<ScreenHiddenDrawer> _page = [];
  @override
  void initState() {
    super.initState();
    _page = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: "Page 01",
          baseStyle: const TextStyle(
            color: Colors.white38,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
          selectedStyle: const TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        Home(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: "Page 02",
          baseStyle: const TextStyle(
            color: Colors.white38,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
          selectedStyle: const TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        MyPage01(),
      ),
    ];
  }

  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      isTitleCentered: true,
      backgroundColorContent: Colors.black,
      backgroundColorAppBar: Colors.black,
      enableCornerAnimation: true,
      screens: _page,
      initPositionSelected: 0,
      backgroundColorMenu: Colors.black54,
      slidePercent: 40,
      contentCornerRadius: 100,
    );
  }
}

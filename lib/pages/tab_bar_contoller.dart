import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/utils/customColors.dart';
import 'package:flutter_ui/widgets/custom_app_bar.dart';

class TabBarController extends StatefulWidget {
  const TabBarController({super.key});

  @override
  State<TabBarController> createState() => _TabBarControllerState();
}

class _TabBarControllerState extends State<TabBarController> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Social Clone"),
      bottomNavigationBar: customBottomNavigationBar(),
    );
  }

  BottomNavigationBar customBottomNavigationBar() {
    return BottomNavigationBar(
      onTap: (value) {
        setState(() {
          _currentIndex = value;
        });
      },
      currentIndex: _currentIndex,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: CustomColors.pinkColor,
      unselectedItemColor: CustomColors.darkColor,
      items: [
        _customBottomNavigationBarItem(CupertinoIcons.house, "Anasayfa"),
        _customBottomNavigationBarItem(CupertinoIcons.search, "Ara"),
        _customBottomNavigationBarItem(Icons.video_library_rounded, "Reels"),
        _customBottomNavigationBarItem(Icons.shopping_bag, "Alisveris"),
        _customBottomNavigationBarItem(CupertinoIcons.person, "Profile"),
      ],
    );
  }

  BottomNavigationBarItem _customBottomNavigationBarItem(
          IconData iconData, String label) =>
      BottomNavigationBarItem(icon: Icon(iconData), label: label);
}

import 'package:flutter/material.dart';
import 'package:flutter_ui/pages/home_page.dart';
import 'package:flutter_ui/pages/profile_page.dart';
import 'package:flutter_ui/pages/reels_page.dart';
import 'package:flutter_ui/pages/search_page.dart';
import 'package:flutter_ui/pages/shopping_page.dart';
import 'package:flutter_ui/utils/customColors.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: NeverScrollableScrollPhysics(),
        children: [
          HomePage(),
          SearchPage(),
          ReelsPage(),
          ShoppingPage(),
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: customBottomNavBar(),
    );
  }

  BottomNavigationBar customBottomNavBar() {
    return BottomNavigationBar(
      onTap: (index) {
        setState(() {
          _currentIndex = index;
          _pageController.jumpToPage(index);
        });
      },
      backgroundColor: CustomColors.pinkColor,
      selectedItemColor: Colors.white,
      unselectedItemColor: CustomColors.darkColor,
      currentIndex: _currentIndex,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
        BottomNavigationBarItem(
            icon: Icon(Icons.video_collection), label: "Reels"),
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag), label: "Shopping"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
      ],
    );
  }
}

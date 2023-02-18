import 'package:flutter/material.dart';
import 'package:news_app_ui/pages/breaking_news.dart';
import 'package:news_app_ui/pages/home_page.dart';
import 'package:news_app_ui/pages/profile_page.dart';
import 'package:news_app_ui/pages/search_page.dart';
import 'package:news_app_ui/pages/trending_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  static String main = 'main';

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedIndex = 0;

  void onTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  List<Widget> pages = [
    const HomePage(),
    const TrendingPage(),
    const SearchPage(),
    const BookMarkPage(),
    const ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: onTap,
        selectedItemColor: Colors.grey[700] ,
        unselectedItemColor: Colors.grey[300],
        backgroundColor: Colors.grey[100],
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 10,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.trending_up_sharp), label: 'breaking'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
          BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: 'comment'),
          BottomNavigationBarItem(icon: Icon(Icons.person_2), label: 'profile'),
        ],
      ),
    );
  }
}

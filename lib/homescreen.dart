import 'package:flutter/material.dart';
import 'package:movies/tabs/browse.dart';
import 'package:movies/tabs/home.dart';
import 'package:movies/tabs/search.dart';
import 'package:movies/tabs/watchlist.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          currentindex = index;
          setState(() {});
        },
        currentIndex: currentindex,
        items: [
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/images/Home.png')),
              label: 'HOME'),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/images/Search.png')),
              label: 'SEARCH'),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/images/browse.png')),
              label: 'BROWSE'),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/images/watchlist.png')),
              label: 'WATCHLIST'),
        ],
      ),
      body: tabs[currentindex],
    );
  }

  List<Widget> tabs = [Home(), SearchScreen(), WatchList(), Browse()];
}

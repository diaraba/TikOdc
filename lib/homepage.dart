import 'package:flutter/material.dart';
import 'package:tikodc/pages/home.dart';
import 'package:tikodc/pages/inbox.dart';
import 'package:tikodc/pages/plus.dart';
import 'package:tikodc/pages/profile.dart';
import 'package:tikodc/pages/search.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    HomePag(),
    UserSearchPage(),
    UserPlusPage(),
    UserInboxPage(),
    UserProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _navigateBottomBar,
          type: BottomNavigationBarType.fixed,
          unselectedLabelStyle: const TextStyle(
          color: Color.fromARGB(255, 10, 10, 10), fontSize: 14),
          backgroundColor: Color.fromRGBO(5, 5, 5, 1),
          fixedColor: Colors.white,
          unselectedItemColor: Colors.white,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                label: 'Search'),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/tiktok_add.png',
                  height: 30,
                ),
                label: ''),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.chat_bubble_rounded,
                color: Colors.white,
              ),
              label: 'Inbox',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                label: 'Profile '),
          ]),
    );
  }
}

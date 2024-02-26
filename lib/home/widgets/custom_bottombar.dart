import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:paloozatestapp/home/mainpage.dart';
import 'package:paloozatestapp/home/screens/create_match_screen.dart';
import 'package:paloozatestapp/home/screens/last_matches_screen.dart';

class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({super.key});

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const MainPageScreen(),
    const LastMatches(),
    const CreateNewMatch(),
    const LastMatches(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 119, 119, 119),
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.calendar), label: 'Calendar'),
          BottomNavigationBarItem(icon: Icon(Icons.cake), label: 'Birthday'),
          BottomNavigationBarItem(icon: Icon(Icons.image), label: 'Image'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromARGB(255, 17, 173, 225),
        unselectedItemColor: const Color.fromARGB(100, 0, 0, 0),
        onTap: _onItemTapped,
      ),
    );
  }
}

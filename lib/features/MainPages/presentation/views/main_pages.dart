import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:finalproject/constants.dart';
import 'package:finalproject/features/MainPages/presentation/views/Chatbot/chatbot_view.dart';
import 'package:finalproject/features/MainPages/presentation/views/Dairy_view/dairy_view.dart';
import 'package:finalproject/features/MainPages/presentation/views/Home_view/home_view.dart';
import 'package:finalproject/features/MainPages/presentation/views/plans_view/plans_view.dart';
import 'package:finalproject/features/MainPages/presentation/views/profile_view/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainPages extends StatefulWidget {
  @override
  _MainPagesState createState() => _MainPagesState();
}

class _MainPagesState extends State<MainPages> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomeView(),
    PlansView(),
    ChatbotView(),
    DairyView(),
    ProfileView(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSwitcher(
        duration: Duration(milliseconds: 300),
        child: _pages[_selectedIndex],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        color: kPrimaryColor,
        buttonBackgroundColor: kPrimaryColor,
        animationDuration: Duration(milliseconds: 300),
        height: 60,
        index: _selectedIndex,
        items: [
          CurvedNavigationBarItem(
            child: Icon(
              Icons.house_outlined,
              size: 28,
              color: _selectedIndex == 0 ? kSecondaryColor : Colors.white,
            ),
            label: 'Home',
            labelStyle: TextStyle(
              fontSize: 12,
              color: _selectedIndex == 0 ? kSecondaryColor : Colors.white,
            ),
          ),
          CurvedNavigationBarItem(
            child: Icon(
              FontAwesomeIcons.fileAlt,
              size: 24,
              color: _selectedIndex == 1 ? kSecondaryColor : Colors.white,
            ),
            label: 'Plans',
            labelStyle: TextStyle(
              fontSize: 12,
              color: _selectedIndex == 1 ? kSecondaryColor : Colors.white,
            ),
          ),
          CurvedNavigationBarItem(
            child: Icon(
              FontAwesomeIcons.robot,
              size: 24,
              color: _selectedIndex == 2 ? kSecondaryColor : Colors.white,
            ),
            label: 'Chatbot',
            labelStyle: TextStyle(
              fontSize: 12,
              color: _selectedIndex == 2 ? kSecondaryColor : Colors.white,
            ),
          ),
          CurvedNavigationBarItem(
            child: Icon(
              FontAwesomeIcons.chartPie,
              size: 24,
              color: _selectedIndex == 3 ? kSecondaryColor : Colors.white,
            ),
            label: 'Diary',
            labelStyle: TextStyle(
              fontSize: 12,
              color: _selectedIndex == 3 ? kSecondaryColor : Colors.white,
            ),
          ),
          CurvedNavigationBarItem(
            child: Icon(
              FontAwesomeIcons.user,
              size: 24,
              color: _selectedIndex == 4 ? kSecondaryColor : Colors.white,
            ),
            label: 'Profile',
            labelStyle: TextStyle(
              fontSize: 12,
              color: _selectedIndex == 4 ? kSecondaryColor : Colors.white,
            ),
          ),
        ],
        onTap: _onItemTapped,
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:restauran_app/features/main/screens/homepage.dart';
import 'package:restauran_app/features/main/screens/profilepage.dart';
import 'package:restauran_app/helpers/widget/app_bottom_nav.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int _currentIndex = 0;

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getPage(_currentIndex),
      bottomNavigationBar:
          appBottomNavigationBar(currentIndex: _currentIndex, onTap: _onTap),
    );
  }
}

Widget _getPage(int currentIndex) {
  switch (currentIndex) {
    case 0:
      return HomePage();
    case 1:
      return ProfilePage();
    default:
      return Container();
  }
}

import 'package:flutter/material.dart';

import './pages/example.dart';
import './pages/settings.dart';
import 'config.dart';

class Tabs extends StatefulWidget {
  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;
  List<Widget> _pages = <Widget>[ExamplePage(), SettingsPage()];

  @override
  void initState() {
    if (Config.userId == 0) {
      //设置
      _currentIndex = _pages.length - 1;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '主页'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: '设置')
        ],
        iconSize: 45,
        //icon大小
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

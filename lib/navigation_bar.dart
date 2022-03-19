import 'package:car/first.dart';
import 'package:car/globe.dart';
import 'package:car/map.dart';
import 'package:car/min_map.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {

  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    First(),
    Map(),
    Mep(),
    Glob(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex, // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.assignment),
            label:'Training',
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.play_arrow),
            label: 'start',
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.insert_chart),
            label: 'Stats',
          ),

        ],
        selectedFontSize: 12,
        unselectedFontSize: 12,
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: Colors.grey[500],
        type: BottomNavigationBarType.shifting,
        onTap: _onItemTapped,
      ),
    );
  }
}

//import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:cointopper/screens/account.screen.dart';
import 'package:cointopper/screens/airdrop.screen.dart';
import 'package:cointopper/screens/dashboard.dart';
import 'package:cointopper/screens/ipos.screen.dart';
import 'package:cointopper/screens/news.screen.dart';
import 'package:flutter/material.dart';

class BottomTabNavigationPage extends StatefulWidget {
  @override
  _BottomTabNavigationPageState createState() =>
      _BottomTabNavigationPageState();
}

class _BottomTabNavigationPageState extends State<BottomTabNavigationPage> {
//  int _currentIndex = 0;
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      body: Home(),
//      bottomNavigationBar: BottomNavyBar(
//        selectedIndex: _currentIndex,
//        backgroundColor: Colors.black,
//        showElevation: true,
//        itemCornerRadius: 8,
//        curve: Curves.easeInBack,
//        onItemSelected: (index) => setState(() {
//          _currentIndex = index;
//        }),
//        items: [
//          BottomNavyBarItem(
//            icon: Icon(Icons.home),
//            title: Text('Home'),
//            inactiveColor: Colors.white,
//            activeColor: Colors.indigoAccent,
//          ),
//          BottomNavyBarItem(
//            icon: Icon(Icons.supervised_user_circle),
//            title: Text('ICOs'),
//            inactiveColor: Colors.white,
//            activeColor: Colors.indigoAccent,
//          ),
//          BottomNavyBarItem(
//            icon: Icon(Icons.supervised_user_circle),
//            title: Text('Airdrops'),
//            inactiveColor: Colors.white,
//            activeColor: Colors.indigoAccent,
//          ),
//          BottomNavyBarItem(
//            icon: Icon(Icons.fiber_new),
//            title: Text('News'),
//            inactiveColor: Colors.white,
//            activeColor: Colors.indigoAccent,
//          ),
//          BottomNavyBarItem(
//            icon: Icon(Icons.supervised_user_circle),
//            title: Text('Account'),
//            inactiveColor: Colors.white,
//            activeColor: Colors.indigoAccent,
//          ),
//        ],
//      ),
//    );
//  }
  int selectedIndex = 0;
  final widgetOptions = [
    Home(),
    IPOsPage(),
    AirDropsPage(),
    NewsPage(),
    AccountPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: widgetOptions.elementAt(selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.deepPurple,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.grey,
              ),
              title: Text(
                'Home',
                style: TextStyle(
                  color: Colors.grey,
                ),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.donut_large,
                color: Colors.grey,
              ),
              title: Text(
                'IPOs',
                style: TextStyle(
                  color: Colors.grey,
                ),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.local_airport,
                color: Colors.grey,
              ),
              title: Text(
                'AirDrops',
                style: TextStyle(
                  color: Colors.grey,
                ),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.web,
                color: Colors.grey,
              ),
              title: Text(
                'News',
                style: TextStyle(
                  color: Colors.grey,
                ),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle,
                color: Colors.grey,
              ),
              title: Text(
                'Account',
                style: TextStyle(
                  color: Colors.grey,
                ),
              )),
        ],
        currentIndex: selectedIndex,
//        fixedColor: Colors.deepPurple,
        onTap: onItemTapped,
      ),
    );
  }

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}

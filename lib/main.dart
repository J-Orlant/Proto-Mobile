import 'package:flutter/material.dart';
import 'package:proto/heks_color.dart';
import 'package:proto/homeScreen.dart';

import 'package:proto/profile_user.dart';

import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPage = 0;
  final _pageOptions = [
    HomeScreen(),
    Center(child: Text('add Postingan')),
    Center(child: Text('search')),
    ProfileUser(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: HexColor.fromHex('#F99B2A'),
        body: SafeArea(
          child: _pageOptions[currentPage],
        ),
        bottomNavigationBar: FancyBottomNavigation(
          barBackgroundColor: HexColor.fromHex('#F58123'),
          circleColor: Colors.white,
          activeIconColor: HexColor.fromHex('#F58123'),
          inactiveIconColor: Colors.black38,
          tabs: [
            TabData(iconData: Icons.home, title: ""),
            TabData(iconData: Icons.add, title: ""),
            TabData(iconData: Icons.search, title: ""),
            TabData(iconData: Icons.person, title: ""),
          ],
          onTabChangedListener: (position) {
            setState(() {
              currentPage = position;
            });
          },
        ));
  }
}

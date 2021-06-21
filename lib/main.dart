import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:proto/heks_color.dart';
import 'package:proto/homeScreen.dart';

import 'package:proto/profile_user.dart';
import 'package:proto/searchScreen.dart';

// import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';

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
    // Center(child: Text('Search')),
    SearchScreen(),
    AccountPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xfff3f3f3),
        body: SafeArea(
          child: _pageOptions[currentPage],
        ),
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: HexColor.fromHex('#F58123'),
          animationDuration: Duration(milliseconds: 500),
          items: <Widget>[
            Icon(
              Icons.home,
              size: 30,
            ),
            Icon(
              Icons.add,
              size: 30,
            ),
            Icon(
              Icons.search,
              size: 30,
            ),
            Icon(
              Icons.person,
              size: 30,
            ),
          ],
          onTap: (index) {
            setState(() {
              currentPage = index;
            });
          },
        ));
  }
}

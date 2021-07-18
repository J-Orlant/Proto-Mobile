import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:proto/addPosting.dart';
import 'package:proto/camera.dart';
import 'package:proto/heks_color.dart';
import 'package:proto/homeScreen.dart';
import 'package:proto/loginScreen.dart';
import 'package:proto/profile_user.dart';
import 'package:proto/searchScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: LoginScreen(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          children: [
            HomeScreen(),
            AddPosting(),
            SearchPage(),
            AccountPage(),
          ]),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: HexColor.fromHex('#F58123'),
        index: _currentIndex,
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
            _currentIndex = index;
            _pageController.jumpToPage(index);
          });
        },
      ),
    );
  }
}

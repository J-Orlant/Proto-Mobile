import 'package:flutter/material.dart';

import 'Search/search_page.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[700],
      // appBar: AppBar(
      //   elevation: 0,
      //   title: Text('Cari Menu..', style: TextStyle(color: Colors.white)),
      //   centerTitle: false,
      // ),
      body: Search(),
    );
  }
}

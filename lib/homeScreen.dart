import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final styleJudul = TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'What Do You',
                    style: styleJudul,
                  ),
                  Text(
                    'Want To Cook Today?',
                    style: styleJudul,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular Food Today',
                      style: TextStyle(fontSize: 15.0),
                    ),
                    Text('View all')
                  ],
                )
              ],
            ),
          ),
          Container(
            width: 300,
            height: 300,
            color: Colors.yellow,
          ),
          Container(
            width: 300,
            height: 300,
            color: Colors.green,
          ),
          Container(
            width: 300,
            height: 300,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}

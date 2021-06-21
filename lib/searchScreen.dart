import 'package:flutter/material.dart';
import 'package:proto/heks_color.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                border: new OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                  const Radius.circular(30.0),
                )),
                hintText: 'Search Food',
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 300,
              height: 150,
              child: Card(
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

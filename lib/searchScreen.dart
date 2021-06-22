import 'package:flutter/material.dart';
import 'package:proto/heks_color.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
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
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 400,
              height: 150,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    Stack(children: [
                      Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          width: 150,
                          height: 150,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              "https://www.masakapahariini.com/wp-content/uploads/2018/09/cara-membuat-nasi-uduk-MAHI-1.jpg",
                              fit: BoxFit.cover,
                            ),
                          )),
                      Positioned(
                          top: 5,
                          left: 10,
                          child: Card(
                              elevation: 10,
                              child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: Text(
                                  "DKI Jakarta",
                                  style: TextStyle(fontFamily: 'RedHatText'),
                                ),
                              )))
                    ]),
                    Container(
                        child: Column(
                      children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 15.0),
                            child: Text(
                              "Nasi Uduk",
                              style: TextStyle(
                                fontSize: 23.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'RedHatText',
                              ),
                            ),
                          ),
                        ),
                        Container(
                            child: Row(
                          children: [
                            Container(
                              width: 40,
                              child: Text("5,6K"),
                            ),
                            Container(width: 40, child: Text("6,7K")),
                            Container(width: 40, child: Text("4,7"))
                          ],
                        )),
                        Container(
                            child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 45.0, left: 30.0),
                                child: Text("17 detik Ago",
                                    style: TextStyle(
                                        fontSize: 13.0,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'RedHatText',
                                        color: HexColor.fromHex('#ababab')))))
                      ],
                    ))
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

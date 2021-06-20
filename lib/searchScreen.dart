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
            Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 20.0),
                height: 500,
                child: ListView(scrollDirection: Axis.vertical, children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        margin: const EdgeInsets.only(bottom: 60.0),
                        child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0))),
                      ),
                      Container(
                        width: 280,
                        height: 180,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                            topRight: Radius.circular(45.0),
                            bottomRight: Radius.circular(45.0),
                            bottomLeft: Radius.circular(45.0),
                          )),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(45.0),
                                ),
                                child: Container(
                                    height: 75,
                                    width: 280,
                                    child: Image.asset("images/uduk.jpg",
                                        fit: BoxFit.cover)),
                              ),
                              Container(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      "Nasi Lemak",
                                      style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontFamily: 'RedHatTextBold'),
                                    ),
                                    Text(
                                      "17 Menit Yang lalu",
                                      style: TextStyle(
                                          fontSize: 13.0,
                                          fontWeight: FontWeight.bold,
                                          color: HexColor.fromHex('#808080'),
                                          fontFamily: 'RedHatTextBold'),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Singapura, Malaysia",
                                      style: TextStyle(
                                          fontSize: 13.0,
                                          fontWeight: FontWeight.bold,
                                          color: HexColor.fromHex('#808080'),
                                          fontFamily: 'RedHatTextBold'),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        margin: const EdgeInsets.only(bottom: 60.0),
                        child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0))),
                      ),
                      Container(
                        width: 280,
                        height: 180,
                        child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                          topRight: Radius.circular(35.0),
                          bottomRight: Radius.circular(35.0),
                          bottomLeft: Radius.circular(35.0),
                        ))),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        margin: const EdgeInsets.only(bottom: 60.0),
                        child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0))),
                      ),
                      Container(
                        width: 280,
                        height: 180,
                        child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                          topRight: Radius.circular(35.0),
                          bottomRight: Radius.circular(35.0),
                          bottomLeft: Radius.circular(35.0),
                        ))),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        margin: const EdgeInsets.only(bottom: 60.0),
                        child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0))),
                      ),
                      Container(
                        width: 280,
                        height: 150,
                        child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                          topRight: Radius.circular(35.0),
                          bottomRight: Radius.circular(35.0),
                          bottomLeft: Radius.circular(35.0),
                        ))),
                      )
                    ],
                  )
                ]))
          ],
        ),
      ),
    );
  }
}

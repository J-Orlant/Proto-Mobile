import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:proto/heks_color.dart';

class HomeScreen extends StatelessWidget {
  final styleJudul = TextStyle(
    fontSize: 25.0,
    fontWeight: FontWeight.bold,
    fontFamily: 'RedHatText',
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Popular Food Today',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'RedHatText',
                  ),
                ),
                Text(
                  'View all',
                  style: TextStyle(
                    fontWeight: FontWeight.w100,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            height: 400,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Row(
                  children: [
                    Container(
                      width: 210,
                      height: 400,
                      child: Card(
                          elevation: 2.5,
                          color: HexColor.fromHex('#F58123'),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15.0),
                                child: Container(
                                  height: 200,
                                  child: Image.network(
                                    'https://www.masakapahariini.com/wp-content/uploads/2018/09/cara-membuat-nasi-uduk-MAHI-1.jpg',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              SizedBox(height: 20.0),
                              Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 124,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Nasi Uduk',
                                              style: TextStyle(
                                                fontSize: 28.0,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                                fontFamily: 'RedHatTextBold',
                                              ),
                                            ),
                                            Text(
                                              'from Jakarta',
                                              style: TextStyle(
                                                fontSize: 15.0,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                                fontFamily: 'RedHatText',
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '20 - 30 min',
                                            style: TextStyle(
                                                fontSize: 15.0,
                                                fontWeight: FontWeight.w200,
                                                color: Colors.white),
                                          ),
                                          Row(
                                            children: [
                                              IconButton(
                                                onPressed: () {},
                                                icon: Icon(Icons.thumb_up),
                                                color: Colors.white,
                                              ),
                                              Text(
                                                '216',
                                                style: TextStyle(
                                                    color: Colors.white),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ],
                                  ))
                            ],
                          )),
                    ),
                    Container(
                      width: 210,
                      height: 400,
                      child: Card(
                          elevation: 2.5,
                          color: HexColor.fromHex('#FAE075'),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15.0),
                                child: Container(
                                  height: 200,
                                  child: Image.network(
                                    'https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:good,w_640,ar_16:9/v1566898918/jwgiwgsirs5vwzbobopu.jpg',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              SizedBox(height: 20.0),
                              Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 124,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Gudeg Jawa',
                                              style: TextStyle(
                                                fontSize: 28.0,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                                fontFamily: 'RedHatTextBold',
                                              ),
                                            ),
                                            Text(
                                              'from Jawa',
                                              style: TextStyle(
                                                fontSize: 15.0,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                                fontFamily: 'RedHatText',
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '1 hours',
                                            style: TextStyle(
                                                fontSize: 15.0,
                                                fontWeight: FontWeight.w200,
                                                color: Colors.black),
                                          ),
                                          Row(
                                            children: [
                                              IconButton(
                                                onPressed: () {},
                                                icon: Icon(Icons.thumb_up),
                                                color: Colors.black,
                                              ),
                                              Text(
                                                '216',
                                                style: TextStyle(
                                                    color: Colors.black),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ],
                                  ))
                            ],
                          )),
                    ),
                    Container(
                      width: 210,
                      height: 400,
                      child: Card(
                          elevation: 2.5,
                          color: HexColor.fromHex('#F58123'),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0)),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15.0),
                                child: Container(
                                  height: 200,
                                  child: Image.network(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRw2BVNVZD7HL4Y5JY_8RvIxfhTFynRRQSew&usqp=CAU',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              SizedBox(height: 20.0),
                              Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Ikan  Cakalang',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 28.0,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'RedHatTextBold',
                                        ),
                                      ),
                                      Text(
                                        'from Sulawesi Utara',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'RedHatText',
                                        ),
                                      ),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '30 min',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15.0,
                                                fontWeight: FontWeight.w100),
                                          ),
                                          Row(
                                            children: [
                                              IconButton(
                                                onPressed: () {},
                                                icon: Icon(Icons.thumb_up),
                                                color: Colors.white,
                                              ),
                                              Text(
                                                '243',
                                                style: TextStyle(
                                                    color: Colors.white),
                                              )
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  ))
                            ],
                          )),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

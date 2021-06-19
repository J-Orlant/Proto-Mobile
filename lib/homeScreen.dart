import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:proto/detailFood.dart';
import 'package:proto/heks_color.dart';
import 'package:proto/model/TopFood_data.dart';

class HomeScreen extends StatelessWidget {
  final styleJudul = TextStyle(
    fontSize: 25.0,
    fontWeight: FontWeight.bold,
    fontFamily: 'RedHatText',
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
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
                    'Kamu Mau',
                    style: styleJudul,
                  ),
                  Text(
                    'Masak Apa Hari Ini?',
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
                  'Makanan Terpopuler Minggu Ini',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'RedHatText',
                  ),
                ),
                Text(
                  'Lihat Semua',
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
          PopulerCard(),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Kategori Makanan',
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'RedHatText',
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              height: 300,
              decoration: new BoxDecoration(
                border:
                    Border(top: BorderSide(width: 1.0, color: Colors.black26)),
              ),
              child: GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 30,
                mainAxisSpacing: 30,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(80),
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text('DKI Jakarta'),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(80),
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text('DKI Jakarta'),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(80),
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text('DKI Jakarta'),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(80),
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text('DKI Jakarta'),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(80),
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text('DKI Jakarta'),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(80),
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text('DKI Jakarta'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PopulerCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        height: 300,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            final TopFood tfood = topFoodData[index];
            return Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return DetailFood(
                        tfood: tfood,
                      );
                    }));
                  },
                  child: Container(
                    width: 210,
                    height: 300,
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
                                child: Stack(
                                  children: [
                                    Container(
                                      height: 150,
                                      child: Image.network(
                                        tfood.gambar,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Positioned(
                                        top: 5,
                                        left: 10,
                                        child: Card(
                                            elevation: 10,
                                            child: Padding(
                                              padding: const EdgeInsets.all(5),
                                              child: Text(
                                                tfood.daerah,
                                                style: TextStyle(
                                                    fontFamily: 'RedHatText'),
                                              ),
                                            )))
                                  ],
                                )),
                            SizedBox(height: 5.0),
                            Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 85,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            tfood.nama,
                                            style: TextStyle(
                                              fontSize: 24.0,
                                              // fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                              fontFamily: 'RedHatTextBold',
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
                                          tfood.waktu,
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
                )
              ],
            );
          },
          itemCount: topFoodData.length,
        ));
  }
}

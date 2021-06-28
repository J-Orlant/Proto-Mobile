import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:proto/detailFood.dart';
import 'package:proto/kategoriMakanan.dart';
import 'package:proto/model/TopFood_data.dart';
import 'package:proto/model/pengguna_data.dart';
import 'package:proto/userProfile.dart';

class HomeScreen extends StatelessWidget {
  final styleJudul = TextStyle(
    fontSize: 22.0,
    fontWeight: FontWeight.bold,
    fontFamily: 'RedHatText',
    color: Colors.black,
  );

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(
          children: [
            Positioned(
              child: Container(
                width: width,
                height: height + 125,
                color: Colors.orange.shade200,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 10,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Kamu Mau',
                        style: styleJudul,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Masak Apa Hari Ini ?',
                        style: styleJudul,
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        width: width,
                        child: Column(
                          children: [
                            Row(
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
                            SizedBox(
                              height: 15,
                            ),
                            PopulerCard(),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 400,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 20,
                ),
                width: width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    KateMakanan(),
                    SizedBox(
                      height: 30,
                    ),
                    RekomendasiPengguna(),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}

class PopulerCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        height: 240,
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
                    margin: EdgeInsets.only(right: 20),
                    width: 200,
                    height: 240,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          child: Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                  ),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                        tfood.gambar,
                                      ),
                                      fit: BoxFit.cover),
                                ),
                                width: 200,
                                height: 150,
                              ),
                              Positioned(
                                top: 5,
                                left: 5,
                                child: Card(
                                  color: Colors.black45,
                                  child: Padding(
                                    padding: EdgeInsets.all(5),
                                    child: Text(
                                      tfood.daerah,
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                tfood.nama,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    tfood.waktu,
                                    style: TextStyle(
                                      color: Colors.black26,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.thumb_up,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        '214',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            );
          },
          itemCount: topFoodData.length,
        ));
  }
}

class KateMakanan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Kategori Makanan',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'RedHatText',
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return KategoriMakanan();
                  }));
                },
                icon: Icon(Icons.double_arrow),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: width / 4,
                      child: Column(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.orange.shade100,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text('DKI Jakarta'),
                        ],
                      ),
                    ),
                    Container(
                      width: width / 4,
                      child: Column(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.orange.shade100,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Jambi',
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: width / 4,
                      child: Column(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.orange.shade100,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text('Sumatra Utara'),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: width / 4,
                      child: Column(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.orange.shade100,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text('Papua'),
                        ],
                      ),
                    ),
                    Container(
                      width: width / 4,
                      child: Column(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.orange.shade100,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text('Riau'),
                        ],
                      ),
                    ),
                    Container(
                      width: width / 4,
                      child: Column(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.orange.shade100,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text('Maluku'),
                        ],
                      ),
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

class RekomendasiPengguna extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Rekomendasi Pengguna',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'RedHatText',
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
              width: width,
              height: height / 4,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final Pengguna pg = rekomendasiPengguna[index];
                  return Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return UserProfile(pg: pg);
                          }));
                        },
                        child: Container(
                          margin: EdgeInsets.only(right: 20),
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.grey,
                                      image: DecorationImage(
                                        image: NetworkImage(pg.gambar),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    child: Icon(
                                      Icons.verified,
                                      color: Colors.blue,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Text(
                                pg.nama,
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  );
                },
                itemCount: rekomendasiPengguna.length,
              )),
        ],
      ),
    );
  }
}

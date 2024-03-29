import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proto/detailFood.dart';
import 'package:proto/detailKategori.dart';
import 'package:proto/kategoriMakanan.dart';
import 'package:proto/model/TopFood_data.dart';
import 'package:proto/model/kategori_data.dart';
import 'package:proto/model/pengguna_data.dart';
import 'package:proto/rekomndedUser.dart';

class HomeScreen extends StatelessWidget {
  final styleJudul = GoogleFonts.poppins(
    fontSize: 22.0,
    color: Colors.white,
  );

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  width: width,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.orange, Colors.orange.shade200],
                  )),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Makanan Terpopuler Minggu Ini',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'RedHatText',
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    'Lihat Semua',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              PopulerCard(),
                              SizedBox(
                                height: 30,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Stack(
                  children: [
                    Positioned(
                      child: Container(
                        width: width,
                        height: 200,
                        color: Colors.orange.shade200,
                      ),
                    ),
                    Positioned(
                      child: Container(
                        width: width,
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 20,
                        ),
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
                              height: 40,
                            ),
                            RekomendasiPengguna(),
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
            Positioned(
              top: 10,
              right: 10,
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.info_outline_rounded,
                  color: Colors.white,
                  size: 35,
                ),
              ),
            )
          ],
        ),
      ),
    );
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
                      return ResepMakanan(
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
                              Hero(
                                tag: 'image-path-${tfood.gambar}',
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20),
                                    ),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        tfood.gambar,
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  width: 200,
                                  height: 150,
                                ),
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
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          // decoration: BoxDecoration(
                          //   border: Border(
                          //     left: BorderSide(
                          //       color: Colors.white24,
                          //     ),
                          //     right: BorderSide(
                          //       color: Colors.white24,
                          //     ),
                          //     bottom: BorderSide(
                          //       color: Colors.white24,
                          //     ),
                          //   ),
                          //   color: Colors.white24,
                          // ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                tfood.nama,
                                style: GoogleFonts.poppins(
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
                                    style: GoogleFonts.poppins(
                                      color: Colors.black26,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.favorite,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        '214',
                                        style: GoogleFonts.poppins(
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
                style: GoogleFonts.poppins(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
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
                          InkWell(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return DetailKategori(
                                  judul: 'DKI Jakarta',
                                  daerah: jakarta,
                                );
                              }));
                            },
                            child: Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(80),
                                color: Colors.orange.shade100,
                                image: DecorationImage(
                                  image: AssetImage(
                                    'images/jakarta.jpg',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'DKI Jakarta',
                            style: GoogleFonts.poppins(),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return DetailKategori(
                            judul: 'Jambi',
                            daerah: jambi,
                          );
                        }));
                      },
                      child: Container(
                        width: width / 4,
                        child: Column(
                          children: [
                            Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(80),
                                color: Colors.orange.shade100,
                                image: DecorationImage(
                                  image: AssetImage(
                                    'images/jambi.jpg',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Jambi',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return DetailKategori(
                            judul: 'Sumatra Utara',
                            daerah: bali,
                          );
                        }));
                      },
                      child: Container(
                        width: width / 4,
                        child: Column(
                          children: [
                            Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(80),
                                color: Colors.orange.shade100,
                                image: DecorationImage(
                                  image: AssetImage(
                                    'images/bali.jpg',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Bali',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(),
                            ),
                          ],
                        ),
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
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return DetailKategori(
                            judul: 'papua',
                            daerah: papua,
                          );
                        }));
                      },
                      child: Container(
                        width: width / 4,
                        child: Column(
                          children: [
                            Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(80),
                                color: Colors.orange.shade100,
                                image: DecorationImage(
                                  image: AssetImage('images/papua.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Papua',
                              style: GoogleFonts.poppins(),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return DetailKategori(
                            judul: 'Riau',
                            daerah: riau,
                          );
                        }));
                      },
                      child: Container(
                        width: width / 4,
                        child: Column(
                          children: [
                            Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(80),
                                color: Colors.orange.shade100,
                                image: DecorationImage(
                                  image: AssetImage('images/riau.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Riau',
                              style: GoogleFonts.poppins(),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return DetailKategori(
                            judul: 'Maluku',
                            daerah: maluku,
                          );
                        }));
                      },
                      child: Container(
                        width: width / 4,
                        child: Column(
                          children: [
                            Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(80),
                                color: Colors.orange.shade100,
                                image: DecorationImage(
                                  image: AssetImage('images/maluku.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Maluku',
                              style: GoogleFonts.poppins(),
                            ),
                          ],
                        ),
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
            style: GoogleFonts.poppins(
              fontSize: 20.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
              width: width,
              height: height / 5,
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
                                style: GoogleFonts.poppins(
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

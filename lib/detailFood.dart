import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:proto/model/TopFood_data.dart';
import 'package:proto/model/feedData.dart';

class DetailFood extends StatelessWidget {
  final TopFood? tfood;
  final FeedData? feedData;
  DetailFood({this.feedData, this.tfood});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.orange.shade300,
      body: SafeArea(
        child: Stack(
          children: [
            Stack(
              children: [
                Positioned(
                  child: Container(
                    width: width,
                    height: height,
                  ),
                ),
                Positioned(
                  child: Container(
                    width: width,
                    height: height,
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Container(
                              width: width,
                              child: Stack(
                                children: [
                                  Banner(
                                    tfood: tfood,
                                    feedData: feedData,
                                  ),
                                  Positioned(
                                    child: Container(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          IconButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            icon: Icon(Icons.arrow_back),
                                            color: Colors.white,
                                          ),
                                          Row(
                                            children: [
                                              IconButton(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.share,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              BookMark()
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Resep(
                          tfood: tfood,
                          feedData: feedData,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox.expand(
              child: DraggableScrollableSheet(
                initialChildSize: 0.3,
                minChildSize: 0.3,
                maxChildSize: 0.8,
                builder: (BuildContext c, s) {
                  return Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 10.0,
                          )
                        ]),
                    child: ListView(
                      controller: s,
                      children: <Widget>[
                        Center(
                          child: Container(
                            height: 8,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.black26,
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.flag,
                                  size: 35,
                                  color: Colors.greenAccent,
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  'Mudah',
                                  style: TextStyle(
                                    fontFamily: 'RedHatText',
                                    fontSize: 18,
                                    color: Colors.greenAccent,
                                  ),
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.access_time,
                                  size: 35,
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  tfood == null
                                      ? feedData!.waktu
                                      : tfood!.waktu,
                                  style: TextStyle(
                                    fontFamily: 'RedHatText',
                                    fontSize: 18,
                                  ),
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.star_half,
                                  size: 35,
                                  color: Colors.yellow,
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  '4,7',
                                  style: TextStyle(
                                    fontFamily: 'RedHatText',
                                    fontSize: 18,
                                    color: Colors.yellow,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                          tfood == null ? feedData!.nama : tfood!.nama,
                          style: TextStyle(
                            fontSize: 30,
                            fontFamily: 'RedHatText',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          tfood == null ? feedData!.daerah : tfood!.daerah,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            fontFamily: 'RedHatText',
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Bahan - bahan'),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  'Banyak porsi',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                            NumberCount()
                          ],
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        BahanLoop(tfood: tfood, feedData: feedData),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BookMark extends StatefulWidget {
  @override
  _BookMarkState createState() => _BookMarkState();
}

class _BookMarkState extends State<BookMark> {
  bool isMark = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          isMark = !isMark;
        });
      },
      icon: Icon(
        isMark ? Icons.bookmark : Icons.bookmark_border_outlined,
        color: Colors.white,
      ),
    );
  }
}

class NumberCount extends StatefulWidget {
  @override
  _NumberCountState createState() => new _NumberCountState();
}

class _NumberCountState extends State<NumberCount> {
  int _n = 0;

  void add() {
    setState(() {
      _n++;
    });
  }

  void minus() {
    setState(() {
      if (_n != 0) {
        _n--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40,
        width: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Colors.black12,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                minus();
              },
              icon: Icon(Icons.remove),
            ),
            Text(
              '$_n',
              style: TextStyle(fontSize: 10),
            ),
            IconButton(
              onPressed: () {
                add();
              },
              icon: Icon(Icons.add),
            )
          ],
        ));
  }
}

class BahanLoop extends StatefulWidget {
  final TopFood? tfood;
  final FeedData? feedData;

  BahanLoop({this.tfood, this.feedData});
  @override
  _BahanLoopState createState() => _BahanLoopState();
}

class _BahanLoopState extends State<BahanLoop> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Column(
        children: widget.tfood == null
            ? widget.feedData!.bahan.map((e) {
                var index = widget.tfood == null
                    ? widget.feedData!.bahan.indexOf(e)
                    : widget.tfood!.bahan.indexOf(e);
                var jumlah = widget.tfood == null
                    ? widget.feedData!.jumlahBahan[index]
                    : widget.tfood!.jumlahBahan[index];
                return Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: NetworkImage(widget.tfood == null
                                        ? widget.feedData!.gambarBahan[index]
                                        : widget.tfood!.gambarBahan[index]),
                                    fit: BoxFit.cover,
                                  )),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              e,
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            )
                          ],
                        ),
                        Text(
                          '$jumlah',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                );
              }).toList()
            : widget.tfood!.bahan.map((e) {
                var index = widget.tfood == null
                    ? widget.feedData!.bahan.indexOf(e)
                    : widget.tfood!.bahan.indexOf(e);
                var jumlah = widget.tfood == null
                    ? widget.feedData!.jumlahBahan[index]
                    : widget.tfood!.jumlahBahan[index];
                return Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: NetworkImage(widget.tfood == null
                                        ? widget.feedData!.gambarBahan[index]
                                        : widget.tfood!.gambarBahan[index]),
                                    fit: BoxFit.cover,
                                  )),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              e,
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            )
                          ],
                        ),
                        Text(
                          '$jumlah',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                );
              }).toList(),
      ),
    );
  }
}

class Banner extends StatefulWidget {
  final TopFood? tfood;
  final FeedData? feedData;

  const Banner({Key? key, this.tfood, this.feedData}) : super(key: key);
  @override
  _BannerState createState() => _BannerState();
}

class _BannerState extends State<Banner> {
  int _currentIndex = 0;
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    var cardList = widget.tfood == null
        ? widget.feedData!.gambarBanner
        : widget.tfood!.gambarBanner;
    var width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      child: Stack(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              viewportFraction: 1,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              pauseAutoPlayOnTouch: true,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
            items: cardList.map((card) {
              return Builder(builder: (BuildContext context) {
                return Container(
                  height: MediaQuery.of(context).size.height * 0.30,
                  width: MediaQuery.of(context).size.width,
                  child: Container(
                    width: width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(card),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              });
            }).toList(),
          ),
          Container(
            width: width,
            height: width / 1.8,
            alignment: Alignment.bottomCenter,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: map<Widget>(cardList, (index, url) {
                return Container(
                  width: 10.0,
                  height: 10.0,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentIndex == index
                        ? Colors.blueAccent
                        : Colors.grey,
                  ),
                );
              }),
            ),
          )
        ],
      ),
    );
  }
}

class Resep extends StatefulWidget {
  final TopFood? tfood;
  final FeedData? feedData;
  const Resep({Key? key, this.tfood, this.feedData}) : super(key: key);
  @override
  _ResepState createState() => _ResepState();
}

class _ResepState extends State<Resep> {
  @override
  Widget build(BuildContext context) {
    var resepLoop =
        widget.tfood == null ? widget.feedData!.Resep : widget.tfood!.Resep;
    CarouselController tombol = new CarouselController();
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.width / 1.5,
      child: CarouselSlider(
        options: CarouselOptions(
          height: MediaQuery.of(context).size.width / 2,
          enableInfiniteScroll: false,
          enlargeCenterPage: true,
          scrollDirection: Axis.vertical,
        ),
        carouselController: tombol,
        items: resepLoop.map((data) {
          var urutan = resepLoop.indexOf(data) + 1;
          return Builder(builder: (BuildContext context) {
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width,
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.orange.shade200,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Center(
                          child: Text(
                            '$urutan.',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Center(
                          child: Text(
                            '$data',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )
                    ],
                  )),
            );
          });
        }).toList(),
      ),
    );
  }
}

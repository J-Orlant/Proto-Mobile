import 'package:flutter/material.dart';
import 'package:proto/model/TopFood_data.dart';

class DetailFood extends StatelessWidget {
  final TopFood tfood;

  const DetailFood({required this.tfood});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Stack(
      children: [
        Column(
          children: [
            Stack(
              children: [
                Container(
                  width: 500,
                  child: Image.network(
                    tfood.gambar,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.arrow_back),
                          color: Colors.white,
                        ),
                        BookMark()
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
        SizedBox.expand(
          child: DraggableScrollableSheet(
            initialChildSize: 0.5,
            minChildSize: 0.12,
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
                              Icons.analytics,
                              size: 35,
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              'Easy',
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
                              Icons.access_time,
                              size: 35,
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              tfood.waktu,
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
                              Icons.star_border,
                              size: 35,
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              '4,7',
                              style: TextStyle(
                                fontFamily: 'RedHatText',
                                fontSize: 18,
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
                      tfood.nama,
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'RedHatText',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      tfood.daerah,
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
                    )
                  ],
                ),
              );
            },
          ),
        )
      ],
    )));
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

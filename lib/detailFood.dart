import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proto/model/TopFood_data.dart';
import 'package:proto/model/feedData.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// Ini Modelan Baru
class ResepMakanan extends StatefulWidget {
  final TopFood? tfood;
  final FeedData? feedData;

  ResepMakanan({Key? key, this.tfood, this.feedData}) : super(key: key);

  @override
  _ResepMakananState createState() => _ResepMakananState();
}

class _ResepMakananState extends State<ResepMakanan> {
  int selectedIndex = 0;
  bool isVideoClick = false;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController _controller = YoutubePlayerController(
        initialVideoId: (widget.tfood == null)
            ? widget.feedData!.youtube
            : widget.tfood!.youtube,
        flags: YoutubePlayerFlags(
          autoPlay: false,
          mute: false,
        ));

    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    var selectedWindow = [
      BahanMakanan(),
      Intruksi(width),
      Komentar(),
    ];
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Stack(
                    children: [
                      Hero(
                        tag:
                            'image-path-${widget.tfood == null ? widget.feedData!.gambar : widget.tfood!.gambar}',
                        child: Container(
                          width: width,
                          height: height * 0.4,
                          // height: 320,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(widget.tfood == null
                                  ? widget.feedData!.gambar
                                  : widget.tfood!.gambar),
                            ),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(45),
                              bottomRight: Radius.circular(45),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                // offset: Offset(-2.0, 2.0),
                                blurRadius: 10.0,
                                spreadRadius: 12.0,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(
                                Icons.arrow_back_ios,
                                size: 25,
                                color: Colors.orange.shade300,
                              ),
                            ),
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      isVideoClick = true;
                                    });
                                  },
                                  icon: Icon(
                                    Icons.video_call,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                                BookMark()
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 15),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              child: Text(
                                widget.tfood == null
                                    ? widget.feedData!.nama
                                    : widget.tfood!.nama,
                                style: GoogleFonts.oswald(
                                  fontSize: 31,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    width: 25,
                                    height: 25,
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(50),
                                      image: DecorationImage(
                                        image: NetworkImage(
                                            'https://assets.pikiran-rakyat.com/crop/0x372:670x1021/x/photo/2020/07/17/4102275230.png'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5.0),
                                    child: Text(
                                      'shinryuuu_',
                                      style: GoogleFonts.oswald(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              child: Text(
                                widget.tfood == null
                                    ? widget.feedData!.daerah
                                    : widget.tfood!.daerah,
                                style: GoogleFonts.oswald(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  child: Icon(Icons.access_time,
                                      color: Colors.grey.withOpacity(0.5),
                                      size: 25),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 3.0),
                                  child: Text(
                                    widget.tfood == null
                                        ? widget.feedData!.waktu
                                        : widget.tfood!.waktu,
                                    style: GoogleFonts.oswald(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey.withOpacity(0.8),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    padding: EdgeInsets.only(left: 25),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              child: Icon(
                                Icons.favorite_border,
                                size: 25,
                                color: Colors.pink,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 3),
                              child: Text(
                                '900',
                                style: GoogleFonts.oswald(
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 40.0),
                              child: Icon(
                                Icons.chat,
                                size: 25,
                                color: Colors.orange.shade400,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 3),
                              child: Text(
                                '900',
                                style: GoogleFonts.oswald(
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 35),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: selectedIndex == 0
                                        ? Colors.orange
                                        : Colors.transparent,
                                  ),
                                ),
                              ),
                              child: TextButton(
                                child: Text(
                                  'Bahan',
                                  style: GoogleFonts.oswald(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                    color: selectedIndex == 0
                                        ? Colors.orange
                                        : Colors.black,
                                  ),
                                ),
                                onPressed: () {
                                  setState(() {
                                    selectedIndex = 0;
                                  });
                                },
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: selectedIndex == 1
                                        ? Colors.orange
                                        : Colors.transparent,
                                  ),
                                ),
                              ),
                              child: TextButton(
                                child: Text(
                                  'Intruksi',
                                  style: GoogleFonts.oswald(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                    color: selectedIndex == 1
                                        ? Colors.orange
                                        : Colors.black,
                                  ),
                                ),
                                onPressed: () {
                                  setState(() {
                                    selectedIndex = 1;
                                  });
                                },
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: selectedIndex == 2
                                        ? Colors.orange
                                        : Colors.transparent,
                                  ),
                                ),
                              ),
                              child: TextButton(
                                child: Text(
                                  'Komentar',
                                  style: GoogleFonts.oswald(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                    color: selectedIndex == 2
                                        ? Colors.orange
                                        : Colors.black,
                                  ),
                                ),
                                onPressed: () {
                                  setState(() {
                                    selectedIndex = 2;
                                  });
                                },
                              ),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 10),
                      Container(child: selectedWindow[selectedIndex]),

                      // BagianBahan

                      // Akhir Bagian Bahan
                      // Uy
                    ],
                  ),
                ],
              ),
              Positioned(
                top: 40,
                child: (isVideoClick)
                    ? Column(
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(() {
                                isVideoClick = !isVideoClick;
                              });
                            },
                            icon: Icon(
                              Icons.close,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            color: Colors.black26.withOpacity(0.5),
                            width: width,
                            height: width / 1.5,
                            child: YoutubePlayer(
                              controller: _controller,
                              showVideoProgressIndicator: true,
                              progressIndicatorColor: Colors.blue,
                            ),
                          ),
                        ],
                      )
                    : Container(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget BahanMakanan() {
    var resepLoop =
        widget.tfood == null ? widget.feedData!.bahan : widget.tfood!.bahan;
    return Column(
      children: resepLoop.map((data) {
        var index = resepLoop.indexOf(data);
        return Builder(builder: (BuildContext context) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0),
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: NetworkImage(
                                widget.tfood == null
                                    ? widget.feedData!.gambarBahan[index]
                                    : widget.tfood!.gambarBahan[index],
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        widget.tfood == null
                            ? widget.feedData!.bahan[index]
                            : widget.tfood!.bahan[index],
                        style: GoogleFonts.oswald(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Text(
                  '${widget.tfood == null ? widget.feedData!.jumlahBahan[index] : widget.tfood!.jumlahBahan[index]}',
                  style: GoogleFonts.oswald(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          );
        });
      }).toList(),
    );
  }

  Widget Intruksi(double width) {
    var resepLoop =
        widget.tfood == null ? widget.feedData!.Resep : widget.tfood!.Resep;
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: resepLoop.map((data) {
          return Builder(builder: (BuildContext context) {
            return Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30, right: 10),
                      child: Icon(Icons.circle,
                          size: 8, color: Colors.orange[400]),
                    ),
                    Column(
                      children: [
                        Container(
                          width: width * 0.8,
                          child: Text(
                            data,
                            style: GoogleFonts.oswald(
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 5),
              ],
            );
          });
        }).toList());
  }

  Widget Komentar() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(50),
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://assets.pikiran-rakyat.com/crop/0x372:670x1021/x/photo/2020/07/17/4102275230.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // color: Colors.red,
                        width: 200,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text(
                                "roses_are_rosie",
                                style: GoogleFonts.oswald(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Icon(Icons.favorite_border,
                                  size: 22, color: Colors.pink),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 2),
                      Container(
                        width: 180,
                        child: Text(
                          "Sangat memuaskan !",
                          style: GoogleFonts.oswald(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey.withOpacity(0.9)),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(50),
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://pbs.twimg.com/profile_images/1401860193340694530/81rv3s6e_400x400.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // color: Colors.red,
                        width: 200,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text(
                                "minn.__.ju",
                                style: GoogleFonts.oswald(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Icon(Icons.favorite_border,
                                  size: 22, color: Colors.pink),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 2),
                      Container(
                        width: 180,
                        child: Text(
                          "Kalian wajib coba ini !",
                          style: GoogleFonts.oswald(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey.withOpacity(0.9)),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(50),
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://mmc.tirto.id/image/otf/400x0/2018/07/24/lisa--blackpink-_ratio-3x4.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // color: Colors.red,
                        width: 200,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text(
                                "lalalalisa_m",
                                style: GoogleFonts.oswald(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Icon(Icons.favorite_border,
                                  size: 22, color: Colors.pink),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 2),
                      Container(
                        width: 180,
                        child: Text(
                          "Aku makan ini terus terusan, rasanya enak !",
                          style: GoogleFonts.oswald(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey.withOpacity(0.9)),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      );
}

// Batas akhir
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
                                borderRadius: BorderRadius.circular(10)),
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

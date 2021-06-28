import 'package:flutter/material.dart';
import 'package:proto/detailFood.dart';
import 'package:proto/model/TopFood_data.dart';
import 'package:proto/utils/account_image.dart';

class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.orange.shade100,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Positioned(
                child: Stack(
                  children: [
                    Positioned(
                      child: Container(
                        width: width,
                        height: width,
                      ),
                    ),
                    Container(
                        alignment: Alignment.topRight,
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 20,
                        ),
                        width: width,
                        height: height - 100,
                        color: Colors.orange.shade100,
                        child: Stack(
                          children: [
                            Positioned(
                              child: Container(
                                width: 50,
                                height: 50,
                              ),
                            ),
                            Positioned(
                              child: Container(
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.notifications,
                                    color: Colors.orange.shade300,
                                    size: 30,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              right: 3,
                              child: Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.red.shade400,
                                ),
                                child: Center(
                                  child: Text(
                                    '1',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )),
                    Positioned(
                      top: -100,
                      left: 0,
                      child: Container(
                        width: 300,
                        height: 300,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage('images/bg_belakang.png'),
                        )),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 150,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  width: width,
                  height: height - 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                          alignment: Alignment.topRight,
                          child: Container(
                              decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: IconButton(
                                onPressed: () {
                                  showModalBottomSheet(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20),
                                      )),
                                      context: context,
                                      builder: (context) {
                                        return Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(top: 15),
                                              width: 40,
                                              height: 10,
                                              decoration: BoxDecoration(
                                                color: Colors.black12,
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                            ),
                                            ListTile(
                                              leading: new Icon(Icons.settings),
                                              title: new Text('Settings'),
                                            ),
                                            ListTile(
                                              leading: new Icon(Icons.bookmark),
                                              title: new Text('Favorit'),
                                            ),
                                            ListTile(
                                              leading: new Icon(
                                                  Icons.qr_code_outlined),
                                              title: new Text('QR Code'),
                                            ),
                                          ],
                                        );
                                      });
                                },
                                icon: Icon(
                                  Icons.more_horiz,
                                  color: Colors.orange.shade600,
                                  size: 30,
                                ),
                              ))),
                      SizedBox(height: width / 50),
                      BioData(),
                      SizedBox(height: 30),
                      Postingan(),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 100,
                left: width / 2.8,
                right: width / 2.8,
                child: Container(
                  width: width / 4,
                  height: width / 4 + 20,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage('images/ryujin3.jpeg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BioData extends StatefulWidget {
  @override
  _BioDataState createState() => _BioDataState();
}

class _BioDataState extends State<BioData> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Ryujin',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          'Jawa Barat, Bandung',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black26,
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '1,206',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black38,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Pengikut',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black38,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 30,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '40',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black38,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Postingan',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black38,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class Postingan extends StatefulWidget {
  @override
  _PostinganState createState() => _PostinganState();
}

class _PostinganState extends State<Postingan> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: 270,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Postingan',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  // color: Colors.black54,
                ),
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  'Lihat Semua',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black26,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 180,
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
                          return DetailFood(tfood: tfood);
                        }));
                      },
                      child: Container(
                        width: width - 100,
                        height: width - 200,
                        margin: EdgeInsets.only(
                          right: 20,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: NetworkImage(
                              tfood.gambar,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    )
                  ],
                );
              },
              itemCount: topFoodData.length,
            ),
          )
        ],
      ),
    );
  }
}

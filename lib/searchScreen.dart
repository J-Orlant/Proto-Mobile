import 'package:flutter/material.dart';
import 'package:proto/heks_color.dart';
import 'package:proto/model/TopFood_data.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
        ),
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
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  final TopFood tfood = topFoodData[index];
                  return InkWell(
                    child: Container(
                      width: 400,
                      height: 150,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          children: [
                            Stack(
                              children: [
                                Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    width: 150,
                                    height: 150,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20),
                                        topLeft: Radius.circular(20),
                                      ),
                                      child: Image.network(
                                        tfood.gambar,
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
                                            tfood.daerah,
                                            style: TextStyle(
                                                fontFamily: 'RedHatText'),
                                          ),
                                        )))
                              ],
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 10),
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            tfood.nama,
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              fontSize: 30,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Icon(
                                                    Icons.thumb_up,
                                                    size: 20,
                                                  ),
                                                  SizedBox(
                                                    width: 2,
                                                  ),
                                                  Text('312'),
                                                ],
                                              ),
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Icon(
                                                    Icons.message,
                                                    size: 20,
                                                  ),
                                                  SizedBox(
                                                    width: 2,
                                                  ),
                                                  Text('200'),
                                                ],
                                              ),
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Icon(
                                                    Icons.share_outlined,
                                                    size: 20,
                                                  ),
                                                  SizedBox(
                                                    width: 2,
                                                  ),
                                                  Text('324'),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Text(
                                      '17 menit lalu',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        color: Colors.black12,
                                        fontSize: 15,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
                itemCount: topFoodData.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}

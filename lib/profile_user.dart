import 'package:flutter/material.dart';
import 'package:proto/utils/account_image.dart';

class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      // backgroundColor: Colors.black,
      appBar: getAppbar(),
      body: getBody(size),
    );
  }

  PreferredSize getAppbar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(55),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 10,
            right: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  // Icon(Icons.lock_outline, color: Colors.grey[600]),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'shinryuu_',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  IconButton(
                    splashRadius: 20,
                    icon: Icon(Icons.settings_rounded, color: Colors.grey[600]),
                    onPressed: () => showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        content: const Text(
                            'Sedang dalam pembuatan ya teman-teman ^^'),
                        actions: <Widget>[
                          // TextButton(
                          //   onPressed: () => Navigator.pop(context, 'Cancel'),
                          //   child: const Text('Ok'),
                          // ),
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'OK'),
                            child: const Text('OK'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  ListView getBody(size) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: (size.width - 20) * 0.3,
                    child: Stack(
                      children: [
                        Container(
                          height: 95,
                          width: 100,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/ryujin3.jpeg'),
                                fit: BoxFit.cover,
                              ),
                              shape: BoxShape.circle,
                              border: Border.all(width: 1, color: Colors.grey)),
                        ),
                        // Untuk nambah icon Add story
                        // Positioned(
                        //   child: Container(
                        //     height: 25,
                        //     width: 25,
                        //     decoration: BoxDecoration(
                        //       shape: BoxShape.circle,
                        //       color: Colors.blue,
                        //       border: Border.all(width: 1, color: Colors.white),
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                  Container(
                    width: (size.width - 20) * 0.68,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              "3",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Posts",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  height: 1.15),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "1M",
                              style: TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Followers",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  height: 1.15),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Text(
                "Shin Ryujin",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
              SizedBox(height: 8),
              Text("Selamat datang teman teman di profile ku"),
              SizedBox(height: 3),
              Text("Aku harap kalian suka resep makanan buatanku"),
              SizedBox(height: 3),
              Text("Follow aku ya!"),
              // SizedBox(height: 30),
              // Divider(color: Colors.grey[600]),
              // Container
              // SizedBox
              // Row
            ],
          ),
        ),
        SizedBox(height: 15),
        Container(
          height: 0.5,
          width: size.width,
          decoration: BoxDecoration(color: Colors.grey.withOpacity(0.8)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 3),
          child: Row(
            children: [
              Container(
                width: (size.width * 0.55),
                child: IconButton(
                  splashRadius: 20,
                  icon: Icon(Icons.book_rounded, size: 30),
                  onPressed: () {
                    setState(() {
                      selectedIndex = 0;
                    });
                  },
                ),
              ),
              Container(
                width: (size.width * 0.3),
                child: IconButton(
                    splashRadius: 20,
                    icon: Icon(Icons.bookmark_border_outlined, size: 30),
                    onPressed: () {
                      setState(() {
                        selectedIndex = 1;
                      });
                    }),
              ),
              // Container(
              //   width: (size.width * 0.35),
              //   child: IconButton(
              //     splashRadius: 15,
              //     icon: Icon(Icons.table_chart_outlined, size: 30),
              //     onPressed: () {},
              //   ),
              // ),
            ],
          ),
        ),
        Column(
          children: [
            Row(
              children: [
                Container(
                  height: 1,
                  width: (size.width * 0.5),
                  decoration: BoxDecoration(
                    color:
                        selectedIndex == 0 ? Colors.black : Colors.transparent,
                  ),
                ),
                Container(
                  height: 1,
                  width: (size.width * 0.5),
                  decoration: BoxDecoration(
                    color:
                        selectedIndex == 1 ? Colors.black : Colors.transparent,
                  ),
                ),
              ],
            ),
            Container(
              height: 0.5,
              width: size.width,
              decoration: BoxDecoration(color: Colors.grey.withOpacity(0.8)),
            ),
          ],
        ),
        SizedBox(height: 3),
        IndexedStack(
          index: selectedIndex,
          children: [
            getImages(size),
            getImagesTage(size),
          ],
        ),
      ],
    );
  }

  Wrap getImages(size) {
    return Wrap(
      direction: Axis.horizontal,
      spacing: 3,
      runSpacing: 3,
      children: List.generate(images.length, (index) {
        return Container(
          height: 150,
          width: (size.width - 6) / 3,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(images[index]),
              fit: BoxFit.cover,
            ),
          ),
        );
      }),
    );
  }

  Wrap getImagesTage(size) {
    return Wrap(
      direction: Axis.horizontal,
      spacing: 3,
      runSpacing: 3,
      children: List.generate(imageTags.length, (index) {
        return Container(
          height: 150,
          width: (size.width - 6) / 3,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(imageTags[index]),
              fit: BoxFit.cover,
            ),
          ),
        );
      }),
    );
  }
}

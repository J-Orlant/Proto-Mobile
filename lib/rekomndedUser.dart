import 'package:flutter/material.dart';
import 'package:proto/detailFood.dart';
import 'package:proto/model/TopFood_data.dart';
import 'package:proto/model/pengguna_data.dart';
import 'package:proto/profile_user.dart';
import 'package:proto/utils/account_image.dart';
import 'package:flutter/foundation.dart';

class UserProfile extends StatefulWidget {
  final Pengguna pg;
  const UserProfile({Key? key, required this.pg}) : super(key: key);
  @override
  _UserProfile createState() => _UserProfile();
}

class _UserProfile extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.orange.shade100,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              child: Container(
                width: width,
                height: height,
              ),
            ),
            Container(
              alignment: Alignment.topRight,
              padding: EdgeInsets.symmetric(
                horizontal: 10,
                // vertical: 20,
              ),
              width: width,
              height: height - 100,
              color: Colors.orange.shade100,
              child: Stack(
                children: [
                  Positioned(
                    top: -90,
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
                  Positioned(
                    left: 0,
                    top: 15,
                    child: Container(
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.orange.shade300,
                          size: 30,
                        ),
                      ),
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
                height: height,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    InkWell(
                      child: Container(
                        alignment: Alignment.topRight,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: CustomButton(),
                        ),
                      ),
                    ),
                    SizedBox(height: width / 50),
                    Biodata(
                      pg: widget.pg,
                    ),
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
                    image: NetworkImage(widget.pg.gambar),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Biodata extends StatelessWidget {
  final Pengguna pg;

  const Biodata({Key? key, required this.pg}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          pg.nama,
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
      height: 300,
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
            height: 200,
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
                        height: width - 100,
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

class CustomButton extends StatefulWidget {
  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  bool isTrue = false;
  @override
  Widget build(BuildContext context) {
    String text = isTrue ? 'Ikuti' : 'Diikuti';
    return RawMaterialButton(
      fillColor: Colors.green,
      splashColor: Colors.greenAccent,
      child: Padding(
        padding: EdgeInsets.all(7.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(
              isTrue ? Icons.done : Icons.thumb_up,
              color: Colors.amber,
            ),
            SizedBox(
              width: 5.0,
            ),
            Text(
              "$text",
              maxLines: 1,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
      onPressed: () {
        setState(() {
          isTrue = !isTrue;
        });
      },
      shape: const StadiumBorder(),
    );
  }
}

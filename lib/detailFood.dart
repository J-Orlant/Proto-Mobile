import 'package:flutter/material.dart';
import 'package:proto/model/TopFood_data.dart';

class DetailFood extends StatelessWidget {
  final TopFood tfood;

  const DetailFood({required this.tfood});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
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
          )
        ],
      ),
    ));
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

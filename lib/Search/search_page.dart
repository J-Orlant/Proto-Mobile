import 'package:flutter/material.dart';
import 'package:proto/detailFood.dart';
import 'package:proto/model/feedData.dart';
import 'package:proto/model/TopFood_data.dart';

import '../heks_color.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          SizedBox(height: 10),
          SearchBox(),
          Tag(),
          Expanded(
            child: Stack(
              children: <Widget>[
                // Bagian Background
                Container(
                  margin: EdgeInsets.only(top: 60),
                  decoration: BoxDecoration(
                    color: backgroundCard,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                ),
                // Card Postingan
                ListView.builder(
                  itemCount: feedDataFood.length,
                  itemBuilder: (context, index) => KartuPost(
                    foodIndex: index,
                    feedData: feedDataFood[index],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class KartuPost extends StatelessWidget {
  const KartuPost({
    Key? key,
    required this.foodIndex,
    required this.feedData,
  }) : super(key: key);
  final int foodIndex;
  final FeedData feedData;

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Container(
      height: 170,
      // color: Colors.red,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 18,
            child: Container(
              height: 137.0,
              width: width * 0.9,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      // offset: Offset(-10.0, 10.0),
                      blurRadius: 10.0,
                      spreadRadius: 5.0),
                ],
              ),
            ),
          ),
          Positioned(
            top: 12,
            left: 30,
            child: Card(
              elevation: 10,
              shadowColor: Colors.grey.withOpacity(0.5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Container(
                height: 105,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      feedData.gambar,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 10,
            left: 150,
            child: Container(
              height: 150,
              width: 190,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    feedData.nama,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      // color: Colors.orange[700],
                      color: Color(0xFF363f93),
                    ),
                  ),
                  Text(
                    feedData.daerah,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                  Divider(color: Colors.black),
                  Text(
                    "Waktu pembuatan:",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      // color: Colors.orange[700],
                      color: Color(0xFF363f93),
                    ),
                  ),
                  Text(
                    feedData.waktu,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      // color: Colors.orange[700],
                      color: Color(0xFF363f93),
                    ),
                  ),
                  SizedBox(height: 6),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Icon(
                          Icons.favorite_border,
                          size: 27,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 4),
                        child: Icon(
                          Icons.share_outlined,
                          size: 27,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Bagian Search Box

class SearchBox extends StatelessWidget {
  const SearchBox({
    Key? key,
    // required this.onChanged,
  }) : super(key: key);
  // final ValueChanged onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2.5),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.4),
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        // onChanged: onChanged,
        style: TextStyle(
          color: Colors.white,
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(
            Icons.search,
            color: Colors.white70,
            size: 30,
          ),
          hintText: 'Search',
          hintStyle: TextStyle(color: Colors.white),
        ),
        cursorColor: Colors.white.withOpacity(0.3),
      ),
    );
  }
}

// Bagian Tag

class Tag extends StatefulWidget {
  const Tag({Key? key}) : super(key: key);

  @override
  _TagState createState() => _TagState();
}

class _TagState extends State<Tag> {
  int selectedIndex = 0;
  List tag = ['All', 'Jakarta', 'Sumatra', 'Gorontalo', 'Maluku'];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      height: 30,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: tag.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(
              left: 20,
              right: index == tag.length - 1 ? 20 : 0,
            ),
            padding: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              color: index == selectedIndex
                  ? Colors.white.withOpacity(0.4)
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              tag[index],
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

// Favorite button
class FavoriteButton extends StatefulWidget {
  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(isFavorite ? Icons.favorite : Icons.favorite_border,
          color: Colors.pink[400]),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}

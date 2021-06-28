import 'package:flutter/material.dart';
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
                  itemCount: topFoodData.length,
                  itemBuilder: (context, index) => CardPost(
                    foodIndex: index,
                    topfood: topFoodData[index],
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

class CardPost extends StatelessWidget {
  const CardPost({
    Key? key,
    required this.foodIndex,
    required this.topfood,
  }) : super(key: key);
  final int foodIndex;
  final TopFood topfood;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isFavorite = false;
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20 / 2,
      ),
      // color: Colors.blueAccent,
      height: 160,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          // Card
          Container(
            height: 136,
            // decoration: BoxDecoration(
            //   borderRadius: BorderRadius.circular(22),
            //   // color: Colors.blue[400],
            //   boxShadow: [shadowColor],
            // ),
            child: Container(
              // margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [shadowColor],
              ),
            ),
          ),
          // Bagian Gambar
          // Bantu disini coek aawokawokawokaw
          Positioned(
            right: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              height: 150,
              width: 180,
              child: Image.network(
                topfood.gambar,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: SizedBox(
              height: 136,
              width: size.width - 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(
                            topfood.nama,
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(
                            topfood.daerah,
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                            // color: Colors.orange.shade800,
                            ),
                        // Ini icon ada di paling bawah coek
                        child: FavoriteButton(),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          // vertical: 5,
                        ),
                        decoration: BoxDecoration(
                            // color: Colors.orange.shade800,
                            ),
                        child: Icon(
                          Icons.share_outlined,
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

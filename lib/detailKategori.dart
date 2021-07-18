import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proto/model/kategori_data.dart';

class DetailKategori extends StatefulWidget {
  final String judul;

  final daerah;

  const DetailKategori({Key? key, required this.judul, required this.daerah})
      : super(key: key);

  @override
  _DetailKategoriState createState() => _DetailKategoriState();
}

class _DetailKategoriState extends State<DetailKategori> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.judul,
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 1.0,
          padding: const EdgeInsets.all(4.0),
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
          children: widget.daerah.map<Widget>((data) {
            return Builder(builder: (BuildContext context) {
              return Expanded(
                child: InkWell(
                  onTap: () {},
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    color: Colors.orange.shade200,
                    child: Container(
                      width: width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 4,
                            child: Container(
                              width: width,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(data.gambar),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                              child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: Text(
                              data.nama,
                              textAlign: TextAlign.left,
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ))
                        ],
                      ),
                    ),
                  ),
                ),
              );
            });
          }).toList(),
        ),
      ),
    );
  }
}

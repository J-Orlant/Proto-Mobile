import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proto/model/Provinsi_data.dart';

import 'detailKategori.dart';
import 'model/kategori_data.dart';

class KategoriMakanan extends StatefulWidget {
  @override
  _KategoriMakananState createState() => _KategoriMakananState();
}

class _KategoriMakananState extends State<KategoriMakanan> {
  var provinsi = DataProvinsi();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.orange.shade300,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Kategori Makanan',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: provinsi.pancingan.map((data) {
                    var index = provinsi.pancingan.indexOf(data);
                    var value = provinsi.daerah.values.elementAt(index);
                    return Builder(builder: (BuildContext context) {
                      return InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return DetailKategori(
                                judul: '$data',
                                daerah: value,
                              );
                            }));
                          },
                          child: ListTile(
                            leading: Container(
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.orange.shade200,
                              ),
                            ),
                            title: Text(
                              data,
                              style: GoogleFonts.poppins(fontSize: 20),
                            ),
                          ));
                    });
                  }).toList(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

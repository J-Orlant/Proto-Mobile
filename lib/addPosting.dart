import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:proto/camera.dart';
import 'package:proto/model/searchdata.dart';

class AddPosting extends StatefulWidget {
  AddPosting({Key? key}) : super(key: key);

  @override
  _AddPostingState createState() => _AddPostingState();
}

class _AddPostingState extends State<AddPosting> {
  var dropDownValue;
  var waktuValue;
  var items = [
    'Aceh',
    'Sumatera Utara',
    'Sumatera Barat',
    'Riau',
    'Kepulauan Riau',
    'Jambi',
    'Sumatera Selatan',
    'Kepulauan Bangka Belitung',
    'Bengkulu',
    'Lampung',
    'DKI Jakarta',
    'Banten',
    'Jawa Barat',
    'Jawa Tengah',
    'DI Yogyakarta',
    'Jawa Timur',
    'Bali',
    'Nusa Tenggara Barat',
    'Nusa Tenggara Timur',
    'Kalimantan Barat',
    'Kalimantan Tengah',
    'Provinsi Kalimantan Selatan',
    'Kalimantan Timur',
    'Kalimantan Utara',
    'Sulawesi Utara',
    'Gorontalo',
    'Sulawesi Tengah',
    'Sulawesi Barat',
    'Provinsi Sulawesi Selatan',
    'Sulawesi Tenggara',
    'Maluku',
    'Maluku Utara',
    'Papua Barat',
    'Papua',
  ];

  var waktu = [
    'Jam',
    'Menit',
    'Detik',
  ];
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: width,
          height: height,
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                foto(width: width),
                SizedBox(
                  height: 30,
                ),
                formInput(width: width),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: Container(
        width: width - 50,
        height: width / 6,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.orange,
        ),
        child: Center(
          child: Text(
            'Publish',
            style: GoogleFonts.poppins(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget foto({width}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(
              Icons.photo_album,
              size: 30,
              color: Colors.grey.shade500,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'Tambah Foto',
              style: GoogleFonts.poppins(
                fontSize: 20,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        InkWell(
          onTap: () {
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        width: 40,
                        height: 10,
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      ListTile(
                        leading: new Icon(Icons.camera),
                        title: new Text('Kamera'),
                        onTap: () async {
                          await Navigator.push(context,
                              MaterialPageRoute(builder: (_) => Camera()));
                        },
                      ),
                      ListTile(
                        leading: new Icon(Icons.photo),
                        title: new Text('Dari Gallery'),
                      ),
                    ],
                  );
                });
          },
          child: Container(
            width: width / 3,
            height: width / 3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.shade400,
            ),
            child: Center(
              child: Icon(
                Icons.camera_alt_rounded,
                size: 50,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget formInput({width}) {
    return Column(
      children: [
        // Note: Form group Nama Makanan
        Container(
          width: width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Nama Makanan',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Container(
                width: width,
                child: TextField(
                  autofocus: false,
                  decoration: InputDecoration(),
                ),
              ),
            ],
          ),
        ),

        SizedBox(
          height: 20,
        ),
        // Note: Form Group Daerah
        Container(
          width: width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Asal Makanan',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              DropdownButton(
                value: dropDownValue,
                items: items.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(
                      items,
                      style: GoogleFonts.poppins(),
                    ),
                  );
                }).toList(),
                hint: Text(
                  'Silahkan pilih daerah Makanan',
                  style: GoogleFonts.poppins(
                    color: Colors.orange.shade200,
                  ),
                ),
                onChanged: (newValue) {
                  setState(() {
                    dropDownValue = newValue;
                  });
                },
              ),
              SizedBox(
                height: 20,
              ),
              // Note: FormGroup waktu
              Text(
                'Waktu Pembuatan',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),

              Container(
                width: width / 1.5,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 2,
                      child: TextField(
                        autofocus: false,
                        decoration: InputDecoration(),
                      ),
                    ),
                    Expanded(
                      child: DropdownButton(
                        value: waktuValue,
                        items: waktu.map((String waktuItems) {
                          return DropdownMenuItem(
                            value: waktuItems,
                            child: Text(
                              waktuItems,
                              style: GoogleFonts.poppins(),
                            ),
                          );
                        }).toList(),
                        hint: Text(
                          'Jam',
                          style: GoogleFonts.poppins(
                            color: Colors.orange.shade200,
                          ),
                        ),
                        onChanged: (newValue) {
                          setState(() {
                            waktuValue = newValue;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 20,
              ),
              // Note: Form group Bahan - bahan

              Container(
                width: width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Bahan - Bahan',
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      width: width,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.orange.shade200,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: SearchBahan(),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: width,
                      height: width / 1.5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Langkah - langkah',
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextField(
                            maxLines: 8,
                            decoration: InputDecoration.collapsed(
                              border: OutlineInputBorder(),
                              hintText: 'Masukkan langkah pembuatan',
                            ).copyWith(
                                isDense: true,
                                contentPadding: EdgeInsets.all(10)),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class SearchBahan extends StatefulWidget {
  SearchBahan({Key? key}) : super(key: key);

  @override
  _SearchBahanState createState() => _SearchBahanState();
}

class _SearchBahanState extends State<SearchBahan> {
  final TextEditingController _textEditingController = TextEditingController();

  List<String> bahanItem = [
    'Telur',
    'Nasi',
    'Bawang Putih',
    'Bawang Merah',
    'Garam',
    'Cabai',
    'Gula',
    'Nasi',
  ];

  List selectedBahan = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              flex: 5,
              child: TypeAheadField(
                textFieldConfiguration: TextFieldConfiguration(
                  autofocus: false,
                  style: DefaultTextStyle.of(context)
                      .style
                      .copyWith(fontStyle: FontStyle.italic),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Bahan apa saja yang dibutuhkan?'),
                ),
                suggestionsCallback: (pattern) => bahanItem.where((item) =>
                    item.toLowerCase().contains(pattern.toLowerCase())),
                itemBuilder: (_, String item) => ListTile(
                  title: (Text(item)),
                ),
                onSuggestionSelected: (String val) {
                  setState(() {
                    selectedBahan.add(val);
                  });
                },
                getImmediateSuggestions: true,
                hideSuggestionsOnKeyboardHide: false,
                hideOnEmpty: false,
                noItemsFoundBuilder: (context) => Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text('Tidak dapat menemukan bahan'),
                ),
              ),
            ),
            Expanded(
              child: IconButton(
                onPressed: () {
                  selectedBahan.isEmpty
                      ? null
                      : setState(() {
                          selectedBahan.clear();
                        });
                },
                icon: Icon(
                  Icons.clear,
                  size: 30,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          child: Column(
            children: selectedBahan.map((data) {
              return Builder(builder: (BuildContext context) {
                return ListTile(
                  title: Text(data),
                );
              });
            }).toList(),
          ),
        ),
      ],
    );
  }
}

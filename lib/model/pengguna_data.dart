import 'package:flutter/cupertino.dart';

class Pengguna {
  String nama;
  String gambar;

  Pengguna({
    required this.nama,
    required this.gambar,
  });
}

var rekomendasiPengguna = [
  Pengguna(
    nama: 'Arnold Poernomo',
    gambar:
        'https://cdn1-production-images-kly.akamaized.net/M1UKqhFetYLeGBzVPpN4t9EOMBk=/640x640/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3057739/original/038221400_1582390068-chef_arnold_poernomo_2.jpg',
  ),
  Pengguna(
    nama: 'Yuki Yamada',
    gambar:
        'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcReqNTdu5XNDRmxM8OUlte395qS1cpXjCdvPGegmK67OX6TojlB',
  ),
];

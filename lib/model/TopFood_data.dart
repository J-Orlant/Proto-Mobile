class TopFood {
  String gambar;
  String nama;
  String daerah;
  String waktu;
  String youtube;
  List<String> bahan;
  List gambarBahan;
  List jumlahBahan;
  List Resep;
  List gambarBanner;

  TopFood({
    required this.gambar,
    required this.nama,
    required this.daerah,
    required this.waktu,
    required this.youtube,
    required this.bahan,
    required this.gambarBahan,
    required this.jumlahBahan,
    required this.Resep,
    required this.gambarBanner,
  });
}

var topFoodData = [
  TopFood(
    gambar:
        'https://www.masakapahariini.com/wp-content/uploads/2018/09/cara-membuat-nasi-uduk-MAHI-1.jpg',
    nama: 'Nasi Uduk',
    daerah: 'Jakarta',
    waktu: '20 - 30 menit',
    bahan: [
      'Beras',
      'Santan kental',
      'Daun salam',
      'Cengkeh',
      'Serai',
      'Merica',
      'Garam',
    ],
    jumlahBahan: [
      300,
      450,
      2,
      2,
      2,
      'Secukupnya',
      'Secukupnya',
    ],
    Resep: [
      'Beras yang sudah dicuci kemudian dikukus selama 30 menit. Sisihkan',
      'Didihkan santan bersama dengan cengkeh, kayu manis, daun salam, serai, hingga harum kemudian saring',
      'Kemudian aduk nasi yang sudah aron bersama santan hingga santan meresap',
      'Kukus kembali nasi selama 45 menit',
      'Sajikan bersama dengan pelengkap.',
    ],
    gambarBahan: [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdxjcqg2Q2vrHGkEI51oaw9Tul_VMXRWyEsw&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyeYtNCoOMflivTBB53q6QsQHLavXpl-sWGA&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBjoVDy_maQWkwU-yczqEbOO_wZ1vV7n9OQA&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSspnHIlPY9zdHRRmu79lHE7ZbfFZnFseRS7A&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmDkZtbsIXPOTKwxAFd_jKhol5KmxWGJlVqQ&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsZKSlhGLml4iia9CZaQv60BhxF-o6HNbRlw&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSM9hbTH25VLWloyOnH8z17reRk4c184GzE4Q&usqp=CAU',
    ],
    gambarBanner: [
      'https://www.masakapahariini.com/wp-content/uploads/2018/09/cara-membuat-nasi-uduk-MAHI-1.jpg',
      'https://asset.kompas.com/crops/gbmG_rSPvjMvwT8KeYilWzAfOUI=/0x0:1000x667/750x500/data/photo/2021/02/21/6032066dc88e0.jpg',
      'https://asset.kompas.com/crops/z4FKlniytutq5RHVVr0pwN0gkFA=/102x41:957x610/750x500/data/photo/2021/02/21/6031fe29cdef2.jpg',
    ],
    youtube: 'kJogSW-xJgE',
  ),
  TopFood(
    gambar:
        'https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:good,w_640,ar_16:9/v1566898918/jwgiwgsirs5vwzbobopu.jpg',
    nama: 'Gudeg Jawa',
    daerah: 'Jawa',
    waktu: '120 mnt',
    bahan: [
      'Nangka muda',
      'Santan',
      'Air kelapa',
      'Lengkuas',
      'Daun salam',
      'Telur rebus',
      'Gula aren',
      'Garam',
      'Kemiri',
      'Ketumbar',
      'Bawang merah',
      'Bawang putih',
      'Merica',
    ],
    jumlahBahan: [
      '1 kg',
      '2 l',
      '1 l',
      'Secukupnya',
      '5 Lembar',
      'Secukupnya',
      '200 g',
      '2 sdm',
      '10 Butir',
      '1 sdm',
      '15 butir',
      '10 butir',
      '1/2 sdm',
    ],
    Resep: [
      'Pertama, bersihkan nangka muda yang telah disipkan hingg tidak ada getah atapun kotoran kemudian potong-potong dadu atau sesuai selera.',
      'Kemudian, nangka muda yng teah dicuci dan dibersihkan, direbus beberapa menit saja lalu tiriskan',
      'Selanjutnya, masukkan telur rebus, gula aren, dan nangka yang sudah dipotong tadi ke panci. Sebelumnya, letakan beberapa lembar daun salam yang telah disiapkan pada alas panci dan letakkan irisan lengkuas diatasnya',
      'Bumbu-bumbu dihaluskan, kemudian dicampurkan dengan setengah air kelapa. Lalu aduk merata dan tuangkan pada panci.',
      'Tuangkan air kelapa yang tidak dicampur sampai telur dan nangka semuanya terendam kemudian tutup pancinya, seperti membuat sayur nangka biasanya.',
      'Kemudian masak gudeg selama kurang lebih 2 jam dengan api sedang tanpa membuka tutup panci. Lalu, jika air sudah menyusut, sisihkan, dan angkat telur',
      'Selanjutnya, santan dituangkan dan aduk sambil menghancurkan potongan nangka. Telur dimasukkan lagi hingga sedikit terendam dengan nangka. Masak kembali kurang lebih 3 sampai 4 jam dengan api kecil sambil diaduk perlahan',
      'Jika santan sudah habis dan gudeg dirasa sudah berwarna coklat kemerahan itu berarti gudeg yang Anda buat sudah matang',
      'Sajikan bersama dengan pelengkap.',
    ],
    gambarBahan: [
      'https://i0.wp.com/resepkoki.id/wp-content/uploads/2017/04/Young-jackfruit.jpg?fit=500%2C375&ssl=1',
      'https://cf.shopee.co.id/file/43895da0d3a57e7accd55ee3d809c011',
      'https://cdn-2.tstatic.net/makassar/foto/bank/images/manfaat-minum-air-kelapa_20181018_201644.jpg',
      'https://asset.kompas.com/crops/27hSZP1fLgT8RVzR6tYI1Qyf6HA=/0x33:500x366/750x500/data/photo/2020/02/09/5e40220c75201.jpg',
      'https://photo.kontan.co.id/photo/2020/12/14/1163375019p.jpg',
      'https://asset.kompas.com/crops/Ot_kNrBpu3kGiOcKEonj6L_z12E=/0x0:1000x667/750x500/data/photo/2017/11/07/3855988092.jpg',
      'https://asset.kompas.com/crops/D3YU8grvTsCKEByMfszD7trEgyo=/0x23:700x373/780x390/data/photo/2020/07/11/5f094d0943a04.jpg',
      'https://surabayastory.com/wp-content/uploads/2019/06/Garam-Dapur-yang-Banyak-Gunanya.jpg',
      'https://asset.kompas.com/crops/jSLG2M1XGMCJ5-RtKcf4lyO7tKY=/37x31:1265x850/750x500/data/photo/2021/01/11/5ffbc93c63d58.jpg',
      'https://cdns.klimg.com/bola.net/library/upload/21/2020/04/sportylife_2504d94.jpg',
      'https://asset.kompas.com/crops/A1pqv_0Um0AOuA4rMshY5Xg3BAw=/0x0:1000x667/750x500/data/photo/2019/06/06/1393496124.jpg',
      'https://asset.kompas.com/crops/Lj8p7aZEbsq3dcvZQaJoR8fjZU0=/0x0:998x665/780x390/data/photo/2020/02/24/5e53cde894df3.jpg',
      'https://foto.kontan.co.id/-ZFi699NdLLTYlhHnXeKuCWVuQI=/smart/2021/05/03/330434505p.jpg'
    ],
    gambarBanner: [
      'https://www.masakapahariini.com/wp-content/uploads/2018/09/cara-membuat-nasi-uduk-MAHI-1.jpg',
      'https://asset.kompas.com/crops/gbmG_rSPvjMvwT8KeYilWzAfOUI=/0x0:1000x667/750x500/data/photo/2021/02/21/6032066dc88e0.jpg',
      'https://asset.kompas.com/crops/z4FKlniytutq5RHVVr0pwN0gkFA=/102x41:957x610/750x500/data/photo/2021/02/21/6031fe29cdef2.jpg',
    ],
    youtube: '3tGj1B90Uns',
  ),
  TopFood(
    gambar: 'https://seraresa.files.wordpress.com/2015/01/img_3905.jpg',
    nama: 'Ikan Cakalang',
    daerah: 'Sulawesi Utara',
    waktu: '30 menit',
    bahan: [
      'ikan cakalang asap',
      'bawang merah',
      'bawang putih',
      'cabe rawit',
      'cabe merah besar',
      'daun jeruk',
      'sereh',
      'Garam',
      'Gula',
      'Penyedap rasa',
      'Minyak'
    ],
    jumlahBahan: [
      '1 ekor',
      '25 siung',
      '3 siung ',
      '5 buah',
      '5 buah ',
      '1 buah',
      '5 lembar',
      '1 batang',
      'Secukupnya',
      'Secukupnya',
      'Secukupnya',
      'Secukupnya',
    ],
    Resep: [
      'Suwir ikan cakalang tsb, kemudian goreng sebentar. Angkat, tiriskan.',
      'Haluskan bawang putih, cabe rawit, cabe merah dan tomat. Iris bawang merah.',
      'Kemudian goreng. Masukan bumbu yang telah dihaluskan. Goreng terus, lalu masukkan sereh dan daun jeruk.',
      'Masukkan cakalang suwir, aduk merata. Tambahkan gula, garam, penyedap rasa. Koreksi rasa. Aduk sampai berwarna kecoklatan.',
    ],
    gambarBahan: [
      'https://asset-a.grid.id//crop/0x0:0x0/360x240/photo/bobofoto/original/15650_ikan-tuna-tongkol-dan-cakalang-adalah-satu-keluarga-tapi-beda-marga.jpg',
      'https://asset.kompas.com/crops/A1pqv_0Um0AOuA4rMshY5Xg3BAw=/0x0:1000x667/750x500/data/photo/2019/06/06/1393496124.jpg',
      'https://cdn-asset.jawapos.com/wp-content/uploads/2019/03/buktikan-3-khasiat-minum-air-rebusan-bawang-putih-untuk-tekanan-darah_m_-640x447.jpg',
      'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//87/MTA-4017730/eden_farm_eden_farm_-_cabe_rawit_merah_-250_gr-_full02.jpg',
      'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//98/MTA-7515773/ikan_asin_mas_rido_ikan_asin_mas_rido_cabe_merah_besar_-200_g-_full02_gwwibrfi.jpg',
      'https://i1.wp.com/resepkoki.id/wp-content/uploads/2017/09/Daun-jeruk.jpg?fit=1280%2C720&ssl=1',
      'https://asset-a.grid.id/crop/0x0:0x0/360x240/photo/2020/02/28/2984378986.jpg',
      'https://surabayastory.com/wp-content/uploads/2019/06/Garam-Dapur-yang-Banyak-Gunanya.jpg',
      'https://images.bisnis-cdn.com/posts/2019/09/04/1144430/gula.JPG',
      'https://cdn-2.tstatic.net/jateng/foto/bank/images/ilustrasi-msg_20180509_130257.jpg',
      'https://image-cdn.medkomtek.com/HkfCuwPkiLCAeiHjzIfRLJBGL5o=/640x640/smart/klikdokter-media-buckets/medias/2308694/original/055464900_1570621563-Mengungkap-Manfaat-Minyak-Goreng-untuk-Kesehatan-Tubuh-By-Tim-UR-Shutterstock.jpg',
    ],
    gambarBanner: [
      'https://www.masakapahariini.com/wp-content/uploads/2018/09/cara-membuat-nasi-uduk-MAHI-1.jpg',
      'https://asset.kompas.com/crops/gbmG_rSPvjMvwT8KeYilWzAfOUI=/0x0:1000x667/750x500/data/photo/2021/02/21/6032066dc88e0.jpg',
      'https://asset.kompas.com/crops/z4FKlniytutq5RHVVr0pwN0gkFA=/102x41:957x610/750x500/data/photo/2021/02/21/6031fe29cdef2.jpg',
    ],
    youtube: 'Rm8zSg3JZdg',
  ),
];

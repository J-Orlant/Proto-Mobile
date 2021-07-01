class TopFood {
  String gambar;
  String nama;
  String daerah;
  String waktu;
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
  ),
  TopFood(
    gambar:
        'https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:good,w_640,ar_16:9/v1566898918/jwgiwgsirs5vwzbobopu.jpg',
    nama: 'Gudeg Jawa',
    daerah: 'Jawa',
    waktu: '1 jam',
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
  ),
  TopFood(
    gambar:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRw2BVNVZD7HL4Y5JY_8RvIxfhTFynRRQSew&usqp=CAU',
    nama: 'Ikan Cakalang',
    daerah: 'Sulawesi Utara',
    waktu: '30 menit',
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
  ),
];

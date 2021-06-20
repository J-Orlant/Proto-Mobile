class TopFood {
  String gambar;
  String nama;
  String daerah;
  String waktu;
  List<String> bahan;
  List jumlahBahan;

  TopFood({
    required this.gambar,
    required this.nama,
    required this.daerah,
    required this.waktu,
    required this.bahan,
    required this.jumlahBahan,
  });
}

var topFoodData = [
  TopFood(
    gambar:
        'https://www.masakapahariini.com/wp-content/uploads/2018/09/cara-membuat-nasi-uduk-MAHI-1.jpg',
    nama: 'Nasi Uduk',
    daerah: 'Jakarta',
    waktu: '20 - 30 min',
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
  ),
  TopFood(
    gambar:
        'https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:good,w_640,ar_16:9/v1566898918/jwgiwgsirs5vwzbobopu.jpg',
    nama: 'Gudeg Jawa',
    daerah: 'Jawa',
    waktu: '1 hours',
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
  ),
  TopFood(
    gambar:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRw2BVNVZD7HL4Y5JY_8RvIxfhTFynRRQSew&usqp=CAU',
    nama: 'Ikan Cakalang',
    daerah: 'Sulawesi Utara',
    waktu: '30 min',
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
  ),
];

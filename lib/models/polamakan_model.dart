class PolaMakan {
  final String gambarUrlPolamakan;
  final String name;
  final String keterangan1;
  final String keterangan2;
  final String nomor;
  final String contoh;
  final String keterangan3;

  PolaMakan({
    this.gambarUrlPolamakan,
    this.name,
    this.keterangan1,
    this.keterangan2,
    this.nomor,
    this.contoh,
    this.keterangan3,
  });
}

final List<PolaMakan> polamakans = [
  PolaMakan(
    gambarUrlPolamakan: 'assets/images/polamakan0.png',
    name: 'Makan Secukupnya',
    keterangan1: 'Anjuran jumlah Kalori untuk Pria adalah\nsebesar 2.000 – 3.000 Kalori serta untuk\nWanita sebesar 1.600 – 2.400 Kalori\nper-hari.',
    keterangan2: '\nKuncinya adalah, memenuhi kebutuhan nutrisi dan Energi yang cukup untuk tubuh. Umumnya, anjuran jumlah kalori untuk pria adalah sebesar 2.000 – 3.000 kalori serta wanita sebesar 1.600 – 2.400 kalori per-hari.',
    nomor: '1',
    contoh: '• Jangan makan sambil multitasking\n• Jauhkan makanan dari pandangan dan gapaian tangan\n• Memfoto atau membuat jurnal makanan',
    keterangan3:
        'Namun, jumlah kalori ini sebenarnya akan tergantung dari faktor usia, berat badan, dan jenis aktivitas yang Anda lakukan.',
  ),
  PolaMakan(
    gambarUrlPolamakan: 'assets/images/polamakan1.png',
    name: 'Batasi Konsumsi Lemak',
    keterangan1: 'Dengan membatasi Konsumsi Lemak\ntidak sehat, sistem kekebalan tubuh akan\nsemakin kuat.',
    keterangan2: '\nDengan membatasi konsumsi Lemak tidak sehat, sistem kekebalan tubuh akan semakin kuat. Sebaliknya, kalau kadar lemak tubuh terlalu banyak, Anda akan lebih mudah terinfeksi. Kenapa? Karena sisa minyak dari makanan yang Anda konsumsi bisa merusak fungsi sel darah putih yang penting untuk melawan patogen penyebab penyakit.',
    nomor: '2',
    contoh: 'Mengurangi konsumsi makanan yang mengandung Lemak tinggi ataupun di Goreng.',
    keterangan3:
        'Selain sistem imun, pembatasan konsumsi lemak ini pun bermanfaat dalam menurunkan risiko penyakit jantung.',
  ),
  PolaMakan(
    gambarUrlPolamakan: 'assets/images/polamakan2.png',
    name: 'Mengkonsumsi Vitamin,\nMineral, dan Antioksidan',
    keterangan1: 'Vitamin dan Mineral ialah nutrisi Esensial\nuntuk kesehatan serta fungsi sel serta organ\n-organ tubuh. Vitamin C, D, E, dan Zinc\npaling penting dalam menjaga fungsi\nnormal sistem imun.',
    keterangan2: '\nVitamin dan mineral ialah nutrisi esensial untuk kesehatan serta fungsi sel serta organ-organ tubuh. Vitamin C, D, E, dan zinc dikatakan paling penting dalam menjaga fungsi normal sistem imun.',
    nomor: '3',
    contoh: '• Vitamin E (sumber: minyak sayur, sinar matahari, kacang-kacangan, bayam, serta brokoli)\n• Vitamin D (sumber: ikan salmon, keju, dan susu)\n• Zinc (sumber: daging, kacang-kacangan, biji-bijian utuh)\n• Beta karoten (sumber: ubi, wortel, sayuran hijau)',
    keterangan3:
        'Kombinasi multivitamin dan mineral tersebut akan memelihara serta meningkatkan sistem imun tubuh, dan membantu proses metabolisme dan regenerasi sel.',
  ),
  PolaMakan(
    gambarUrlPolamakan: 'assets/images/polamakan3.png',
    name: 'Mengkonsumsi\nBuah dan Sayuran',
    keterangan1: 'Buah-buahan, Sayuran, dan Sumber\nGandum Utuh mengandung berbagai\nVitamin, Mineral, Fitokimia, dan \nAntioksidan yang penting untuk tubuh.',
    keterangan2: '\nBuah-buahan, sayuran, dan sumber gandum utuh mengandung berbagai vitamin, mineral, fitokimia, serta antioksidan yang penting untuk tubuh. Nutrisi-nutrisi tersebut yang akan menunjang fungsi dan kerja dari sistem kekebalan tubuh.',
    nomor: '4',
    contoh: '• Pepaya\n• Jeruk\n• Lemon\n• Cabai\n• Paprika\n• Kiwi\n• Mangga\n• Jambu\n• Stroberi.',
    keterangan3:
        'Sayuran, terutama yang berdaun hijau memiliki nutrisi yang vital untuk sistem kekebalan tubuh, seperti vitamin A and C, serta B9 alias Folat.',
  ),
  PolaMakan(
    gambarUrlPolamakan: 'assets/images/polamakan4.png',
    name: 'Mengkonsumsi\nSumber Protein',
    keterangan1: 'Protein membantu tubuh membentuk\nAntibodi yang berperan penting untuk\nmelawan Infeksi Bakteri atau Virus serta\nmencegah terjadinya Infeksi dari Patogen\nyang sama di kemudian hari.',
    keterangan2: '\nProtein membantu tubuh membentuk antibodi yang berperan penting untuk melawan infeksi bakteri atau virus serta mencegah terjadinya infeksi dari patogen yang sama di kemudian hari.',
    nomor: '5',
    contoh: '• Daging ayam\n• Daging Sapi tanpa Lemak\n• Telur\n• Kedelai\n• Kacang Polong\n• Keju\n• Yogurt.',
    keterangan3:
        'Ketika tubuh Anda berhasil memproduksi antibodi terhadap bakteri atau virus tertentu, sel-sel imun dalam tubuh tidak akan pernah lupa cara menghasilkannya lagi.',
  ),
  PolaMakan(
    gambarUrlPolamakan: 'assets/images/polamakan5.png',
    name: 'Penuhi kebutuhan\nVitamin C',
    keterangan1: 'Antioksidan yang terkandung di dalam\nVitamin C melindungi Sel dari kerusakan\nakibat Radikal bebas.',
    keterangan2: '\nAntioksidan yang terkandung di dalam vitamin C melindungi sel dari kerusakan akibat radikal bebas.',
    nomor: '6',
    contoh: '• Sitrus\n• Stroberi\n• Brokoli\n• Taoge.',
    keterangan3:
        'Vitamin satu ini menunjang kerja sel-sel imun ketika menyerang virus dan bakteri.',
  ),
  PolaMakan(
    gambarUrlPolamakan: 'assets/images/polamakan6.png',
    name: 'Serat',
    keterangan1: 'Serat menunjang kesehatan sistem\npencernaan, meningkatkan sistem imun,\nbahkan suasana hati.',
    keterangan2: '\nSerat menunjang kesehatan sistem pencernaan, meningkatkan sistem imun, bahkan suasana hati.Penelitian menunjukkan bahwa konsumsi serat membuat respons imun dalam melindungi tubuh dari virus menjadi lebih kuat. Jika kebutuhannya terpenuhi, kualitas tidur Anda pun ikut meningkat.',
    nomor: '7',
    contoh: '• Oatmeal\n• Biji-bijian Utuh\n• Lentil\n• Polong-polongan\n• Kacang-kacangan.',
    keterangan3:
        'Penelitian menunjukkan bahwa konsumsi serat membuat respons imun dalam melindungi tubuh dari virus menjadi lebih kuat. Jika kebutuhannya terpenuhi, kualitas tidur Anda pun ikut meningkat.',
  ),
];

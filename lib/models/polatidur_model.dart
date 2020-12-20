class PolaTidur {
  final String gambarUrlPolatidur;
  final String name;
  final String keterangan1;
  final String keterangan2;
  final String nomor;
  final String contoh;
  final String keterangan3;

  PolaTidur({
    this.gambarUrlPolatidur,
    this.name,
    this.keterangan1,
    this.keterangan2,
    this.nomor,
    this.contoh,
    this.keterangan3,
  });
}

final List<PolaTidur> polatidurs = [
  PolaTidur(
    gambarUrlPolatidur: 'assets/images/polatidur0.png',
    name: 'Waktu Ideal Tidur',
    keterangan1: 'Waktu ideal Manusia tidur sebaiknya\nantara 6 hingga 7 jam.',
    keterangan2: '\nMenjaga pola tidur, baik dari segi frekuensi maupun kualitasnya akan berpengaruh positif terhadap peningkatan daya tahan tubuh.',
    nomor: '1',
    contoh: '• Tidur dengan teratur\n• Tidak tidur terlalu malam\n• Tidak tidur lebih dari jam 11 malam',
    keterangan3:
        'Imunitas tubuh yang baik menjadi salah satu kunci agar tubuh tetap sehat dan terhindar dari berbagai macam penyakit termasuk Covid-19.',
  ),
  PolaTidur(
    gambarUrlPolatidur: 'assets/images/polatidur1.png',
    name: 'Bangun Sebelum\nJam 05:00 Pagi',
    keterangan1: 'Direkomendasikan untuk tidur sebelum\njam 11 malam dan bangun sebelum\njam 5 pagi.',
    keterangan2: '\nTidur siang selama 30 menit juga terbukti dapat mengurangi stres dan meningkatkan sistem kekebalan tubuh.',
    nomor: '2',
    contoh: '• Tidur pada siang hari setelah Dzuhur\n • Tidur dengan waktu yang Tepat dan Teratur.\n• Hindari tidur malam lebih dari jam 23:00 malam',
    keterangan3:
        'Kurang tidur bisa mengganggu produksi protein sitokin yang menyebabkan antibodi dan sel untuk melawan infeksi turut berkurang.\nDengan kata lain, tidur yang cukup adalah kunci penting untuk melawan infeksi menular. Dalam jangka panjang, kurang tidur juga bisa meningkatkan risiko obesitas, diabetes, dan penyakit jantung.',
  ),
];

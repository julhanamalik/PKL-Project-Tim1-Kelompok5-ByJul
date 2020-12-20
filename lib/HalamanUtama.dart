import 'package:project_pkl_julhan_a_malik/tampilan/Olahraga.dart';
import 'package:project_pkl_julhan_a_malik/tampilan/PolaMakan.dart';
import 'package:project_pkl_julhan_a_malik/tampilan/PolaTidur.dart';
import 'package:flutter/material.dart';

class HalamanUtama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        overflow: Overflow.visible,
        fit: StackFit.loose,
        children: <Widget>[
          ClipPath(
            clipper: ClippingClass(),
            child: Container(
            ),
          ),
          Image.asset("assets/design_tampilan_hd(new).png"),
          Positioned(
            left: 20,
            top: 60,
            height: 60,
            width: 60,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset("assets/halaman_utama/logo_julhan2(new).png"),
            ),
          ),
          Positioned(
            left: 20,
            top: 130,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Hallo!",
                    style: TextStyle(
                      fontFamily: "BRLNSR",
                      color: Colors.white,
                      fontSize: 32,
                    )),
                Text("Selamat Datang di Aplikasi",
                    style: TextStyle(
                      fontFamily: "BRLNSR",
                      color: Colors.white,
                      fontSize: 20,
                    )),
                Text("Menjaga Imunitas Tubuh",
                    style: TextStyle(
                      fontFamily: "BRLNSDB",
                      color: Colors.white,
                      fontSize: 21,
                    )),
              ],
            ),
          ),
          Positioned(
            left: 20,
            top: 250,
            right: 20,
            child: Column(
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PolaMakan()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      _customCard(
                        gambarUrl: "logo_julhan_polamakan(new).png",
                        namalatihan: "Pola Makan",
                        waktu: "1 Hari"),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PolaTidur()));
                  },
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    _customCard(
                        gambarUrl: "logo_julhan_polatidur(new).png",
                        namalatihan: "Pola Tidur",
                        waktu: "1 Hari"),
                  ],
                ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Olahraga()));
                  },
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    _customCard(
                        gambarUrl: "logo_julhan_olahraga(new).png",
                        namalatihan: "Olahraga",
                        waktu: "1 Minggu"),
                  ],
                ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

_customCard({String gambarUrl, String namalatihan, String waktu}) {
  return SizedBox(
    height: 160,
    width: 310,
    child: Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 3,
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Align(
              alignment: Alignment.bottomLeft,
              child: Column( 
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    namalatihan,
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: "BRLNSDB",
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    waktu,
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: "BRLNSR",
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
            Image.asset("assets/halaman_utama/" + gambarUrl, width: 100, height: 73),
          ],
        ),
      ),
    ),
  );
}

class ClippingClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height);
    var controlPoint = Offset(size.width - (size.width / 2), size.height - 120);
    var endPoint = Offset(size.width, size.height);
    path.quadraticBezierTo(
        controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
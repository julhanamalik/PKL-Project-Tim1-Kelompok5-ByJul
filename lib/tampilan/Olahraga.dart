import 'package:project_pkl_julhan_a_malik/tampilan/DetailsTampilanOlahraga.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_pkl_julhan_a_malik/models/olahraga_model.dart';

class Olahraga extends StatefulWidget {
  @override
  _OlahragaState createState() => _OlahragaState();
}

class _OlahragaState extends State<Olahraga>
  with SingleTickerProviderStateMixin {
  // ignore: unused_field
  TabController _tabController;
  PageController _pageController;
  // ignore: unused_field
  int _selectedPage = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: 0, length: 5, vsync: this);
    _pageController = PageController(initialPage: 0, viewportFraction: 0.8);
  }

  _OlahragaSelector(int index) {
    return AnimatedBuilder(
      animation: _pageController,
      builder: (BuildContext context, Widget widget) {
        double value = 1;
        if (_pageController.position.haveDimensions) {
          value = _pageController.page - index;
          value = (1 - (value.abs() * 0.3)).clamp(0.0, 1.0);
        }
        return Center(
          child: SizedBox(
            height: Curves.easeInOut.transform(value) * 500.0,
            width: Curves.easeInOut.transform(value) * 400.0,
            child: widget,
          ),
        );
      },
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => DetailsTampilanOlahraga(olahraga: olahragas[index]),
            ),
          );
        },
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                //elevation: 5,
                color: Colors.red[600],
                borderRadius: BorderRadius.circular(15.0),
              ),
              margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 30.0),
              child: Stack(
                children: <Widget>[
                  Center(
                    child: Hero(
                      tag: olahragas[index].gambarUrlOlahraga,
                      child: Image(
                        height: 210,
                        width: 210,
                        image: AssetImage(
                          'assets/images/olahraga$index.png',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  //Coba-coba keur di tambahkeun
                  Positioned(
                    top: 10.0,
                    left: 130.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Tahap',
                          style: TextStyle(
                            fontFamily: "BRLNSR",
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
                        ),
                        Text(
                          olahragas[index].nomor,
                          style: TextStyle(
                            fontFamily: "BRLNSDB",
                            color: Colors.white,
                            fontSize: 45.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 25,
                    bottom: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 5.0),
                        Text(
                          olahragas[index].name,
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "BRLNSR",
                            fontSize: 25.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          olahragas[index].keterangan1,
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "BRLNSR",
                            fontSize: 15.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark,
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 50.0),
          children: <Widget>[
            Positioned(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text("'Olahraga'",
                    style: TextStyle(
                      fontFamily: "BRLNSR",
                      color: Colors.red[800],
                      fontWeight: FontWeight.w900,
                      fontSize: 35,
                    )),
                Text('\n"Secara umum, beraktivitas Fisik',
                    style: TextStyle(
                      fontFamily: "BRLNSR",
                      color: Colors.red[700],
                      fontSize: 17,
                    )),
                Text('seperti ber-olahraga telah teruji bisa',
                    style: TextStyle(
                      fontFamily: "BRLNSR",
                      color: Colors.red[700],
                      fontSize: 17,
                    )),
                Text('membuat tubuh lebih bugar."',
                    style: TextStyle(
                      fontFamily: "BRLNSR",
                      color: Colors.red[700],
                      fontSize: 17,
                    )),
              ],
            ),
          ),
            SizedBox(height: 15.0),
            Container(
              height: 500,
              width: double.infinity,
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (int index) {
                  setState(() {
                    _selectedPage = index;
                  });
                },
                itemCount: olahragas.length,
                itemBuilder: (BuildContext context, int index) {
                  return _OlahragaSelector(index);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

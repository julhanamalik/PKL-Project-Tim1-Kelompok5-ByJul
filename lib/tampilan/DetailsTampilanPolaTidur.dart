import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_pkl_julhan_a_malik/models/polatidur_model.dart';

class DetailsTampilanPolaTidur extends StatefulWidget {
  final PolaTidur polatidur;

  DetailsTampilanPolaTidur({this.polatidur});

  @override
  _DetailsTampilanPolaTidurState createState() => _DetailsTampilanPolaTidurState();
}

class _DetailsTampilanPolaTidurState extends State<DetailsTampilanPolaTidur> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(
                      left: 30.0,
                      right: 30.0,
                      top: 50.0,
                    ),
                    height: 540.0,
                    color: Colors.green[600],
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            GestureDetector(
                              onTap: () => Navigator.pop(context),
                              child: Icon(
                                Icons.arrow_back,
                                size: 30.0,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        Text(
                          widget.polatidur.name,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontFamily: "BRLNSR",
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 0.0),
                        Text(
                          widget.polatidur.keterangan2,
                          style: TextStyle(
                            fontFamily: "BRLNSR",
                            color: Colors.white,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 30.0,
                    bottom: 40.0,
                    child: Hero(
                      tag: widget.polatidur.gambarUrlPolatidur,
                      child: Image(
                        height: 230,
                        width: 230,
                        image: AssetImage(widget.polatidur.gambarUrlPolatidur),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 500.0,
                transform: Matrix4.translationValues(00, -40.0, 00),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                        left: 30.0,
                        right: 30.0,
                        top: 25.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Keterangan',
                            style: TextStyle(
                              fontFamily: "BRLNSR",
                              fontSize: 24.0,
                              color: Colors.black87,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            widget.polatidur.keterangan3,
                            style: TextStyle(
                              fontFamily: "BRLNSR",
                              color: Colors.black87,
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 30.0,
                        vertical: 20.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Contoh',
                            style: TextStyle(
                              fontFamily: "BRLNSR",
                              color: Colors.black87,
                              fontSize: 24.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                          widget.polatidur.contoh,
                          style: TextStyle(
                            fontFamily: "BRLNSR",
                            color: Colors.black87,
                            fontSize: 16.0,
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
      ),
    );
  }
}

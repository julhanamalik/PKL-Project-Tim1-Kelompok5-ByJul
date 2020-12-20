import 'package:flutter/material.dart';
import 'package:project_pkl_julhan_a_malik/HalamanUtama.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HalamanUtama(),
      debugShowCheckedModeBanner: false,
    );
  }
}
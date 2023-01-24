import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
// import 'package:testapp/model/model.dart';
// import 'package:ebook/pages/book_details_screen.dart';
// import 'package:google_fonts/google_fonts.dart';

class favscreen extends StatefulWidget {
  const favscreen({super.key});

  @override
  State<favscreen> createState() => _favscreenState();
}

class _favscreenState extends State<favscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Color.fromARGB(255, 147, 83, 162),
        appBar: AppBar(
      backgroundColor: Colors.transparent,
      title: Text(
        'favroute list',
        style: TextStyle(
          color: Color.fromARGB(255, 226, 22, 22),
          fontWeight: FontWeight.w600,
          fontSize: 30,
        ),
      ),
    ));
  }
}

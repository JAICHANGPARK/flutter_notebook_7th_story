import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class LichiAppHomePage extends StatefulWidget {
  @override
  _LichiAppHomePageState createState() => _LichiAppHomePageState();
}

class _LichiAppHomePageState extends State<LichiAppHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Lichi", style: GoogleFonts.firaCode(),),
      ),
    );
  }
}

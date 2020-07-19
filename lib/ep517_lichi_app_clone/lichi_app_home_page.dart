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
        elevation: 0,
        backgroundColor: Colors.grey[100],
        centerTitle: true,
        title: Text("Lichi", style: GoogleFonts.firaCode(
          color: Colors.black,
        ),
        ),
        actions: [
          Icon(Icons.add_shopping_cart, color: Colors.black,),
        ],
        leading: IconButton(
          color: Colors.black,
          onPressed: (){},
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
    );
  }
}

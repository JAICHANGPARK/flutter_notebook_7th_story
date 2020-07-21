import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class LichiGridPage extends StatefulWidget {
  @override
  _LichiGridPageState createState() => _LichiGridPageState();
}

class _LichiGridPageState extends State<LichiGridPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[100],
        centerTitle: true,
        title: Text(
          "Lichi",
          style: GoogleFonts.firaCode(
            color: Colors.black,
          ),
        ),
        actions: [
          Icon(
            Icons.add_shopping_cart,
            color: Colors.black,
          ),
        ],
        leading: IconButton(
          color: Colors.black,
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: GridView.count(crossAxisCount: 2,
      childAspectRatio: 0.6,
      crossAxisSpacing: 8,
      mainAxisSpacing: 8,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.red
          ),
          child: Column(
            children: [
              Expanded(
                flex: 8,
                child: Placeholder(),
              ),
              Expanded(
                flex: 2,
                child: Placeholder(),
              ),

            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.blue
          ),
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.blue
          ),
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.red
          ),
        ),
      ],),

    );
  }
}














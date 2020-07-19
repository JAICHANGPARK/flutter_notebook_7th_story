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
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(

                image: DecorationImage(
                  fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.2), BlendMode.difference
                    ),
                    image:
                        NetworkImage("https://cdn.pixabay.com/photo/2016/11/21/16/01/attractive-1846127_960_720.jpg")),
              ),
            ),
          ),
          Positioned(
            left: 16,
            right: 16,
            bottom: 0,
            child: SizedBox(
              height: MediaQuery.of(context).size.height / 2.2,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index){
                return Container(
                  width: MediaQuery.of(context).size.width / 2,
                );
              }),
            )
          )
        ],
      ),
    );
  }
}
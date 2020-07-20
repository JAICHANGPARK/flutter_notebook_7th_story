import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailPage extends StatelessWidget {
  final String title;
  final String imgPath;
  final String price;

  DetailPage({this.title, this.imgPath, this.price});

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
                  image: NetworkImage(imgPath ?? ""),
                  fit: BoxFit.cover
                )
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: MediaQuery.of(context).size.height / 7,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(.6)
              ),
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(title??"Unknown", style: TextStyle(
                    fontSize: 24,
                    color: Colors.grey
                  ),),

                  Row(
                    children: [
                      Icon(Icons.favorite_border),
                      Icon(Icons.share),
                      Spacer(),
                      Text(price ?? "\$??",style: TextStyle(
                        fontSize: 28
                      ),)
                    ],
                  )

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

















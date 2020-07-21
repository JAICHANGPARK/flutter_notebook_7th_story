import 'package:flutter/material.dart';
import 'package:flutter_notebook_7th_story/ep517_lichi_app_clone/detail_page.dart';
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
            child: PageView(),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.2), BlendMode.difference),
                    image:
                        NetworkImage("https://cdn.pixabay.com/photo/2016/11/21/16/01/attractive-1846127_960_720.jpg")),
              ),

            ),
          ),
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 2.2,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      String img = "https://cdn.pixabay.com/photo/2016/03/23/04/01/beautiful-1274056_960_720.jpg";
                      String title = "White Dress";
                      String price = "\$3199";
                      return GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => DetailPage(
                                    title: title,
                                    imgPath: img,
                                    price: price,
                                  )));
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width / 2.1,
                          margin: EdgeInsets.only(left: 8, right: 8),
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              Expanded(
                                flex: 10,
                                child: Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(image: NetworkImage(img), fit: BoxFit.cover)),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Container(
                                  color: Colors.grey[300],
                                  padding: EdgeInsets.all(8),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Align(
                                        child: Text(
                                          title,
                                          style: TextStyle(
                                            fontSize: 18,
                                          ),
                                        ),
                                        alignment: Alignment.topLeft,
                                      ),
                                      Center(
                                        child: Text(
                                          price,
                                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ))
        ],
      ),
    );
  }
}

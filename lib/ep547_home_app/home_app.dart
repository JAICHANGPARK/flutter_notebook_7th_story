import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeListPage(),
    );
  }
}

class HomeListPage extends StatefulWidget {
  @override
  _HomeListPageState createState() => _HomeListPageState();
}

class _HomeListPageState extends State<HomeListPage> {
  PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Feed",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
                left: 0,
                bottom: 0,
                right: 0,
                top: 0,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Near you",
                          style: GoogleFonts.montserrat(fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16),
                          child: Container(
                            height: 340,
                            width: double.infinity,
                            child: Card(
                              child: Column(
                                children: [
                                  Expanded(
                                      flex: 4,
                                      child: Container(
                                        child: Stack(
                                          children: [
                                            Positioned(
                                                left: 0,
                                                top: 0,
                                                right: 0,
                                                bottom: 0,
                                                child: PageView(
                                                  controller: _pageController,
                                                  children: [
                                                    Image.network(
                                                      "https://cdn.pixabay.com/photo/2017/09/09/18/25/living-room-2732939__340.jpg",
                                                      fit: BoxFit.cover,
                                                    ),
                                                    Image.network(
                                                      "https://cdn.pixabay.com/photo/2017/03/22/17/39/kitchen-2165756__340.jpg",
                                                      fit: BoxFit.cover,
                                                    ),
                                                    Image.network(
                                                      "https://cdn.pixabay.com/photo/2017/03/19/01/43/living-room-2155376__340.jpg",
                                                      fit: BoxFit.cover,
                                                    ),
                                                    Image.network(
                                                      "https://cdn.pixabay.com/photo/2017/09/09/18/25/living-room-2732939__340.jpg",
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ],
                                                )),
                                            Positioned(
                                                right: 12,
                                                top: 12,
                                                child: CircleAvatar(
                                                  backgroundColor: Colors.white,
                                                  child: Icon(
                                                    Icons.favorite_border,
                                                    color: Colors.black,
                                                  ),
                                                )),
                                            Positioned(
                                                bottom: 8,
                                                left: 0,
                                                right: 0,
                                                child: Center(
                                                  child: SmoothPageIndicator(
                                                    controller: _pageController,
                                                    count: 5,
                                                    effect: WormEffect(
                                                        dotHeight: 8,
                                                        dotWidth: 8,
                                                        activeDotColor: Colors.white,
                                                        dotColor: Colors.white.withOpacity(0.5)),
                                                  ),
                                                ))
                                          ],
                                        ),
                                      )),
                                  Expanded(
                                      flex: 2,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 8,
                                          vertical: 4
                                        ),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: [
                                            Chip(
                                              label: Text(
                                                "NEW",
                                                style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),
                                              ),
                                              backgroundColor: Colors.purple[50],
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(
                                                  "3,400\$",
                                                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                                                ),
                                                Text("154m^2",
                                                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                                                Text("4.5 Room",
                                                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                                              ],
                                            ),
                                            Text("Steinsche Gasse 32b, 47059 Duisburg, Sta",
                                            overflow: TextOverflow.clip,
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            ),

                                          ],
                                        ),
                                      ))
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16),
                          child: Container(
                            height: 240,
                            width: double.infinity,
                            color: Colors.red,
                            child: Card(
                              child: Column(
                                children: [],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16),
                          child: Container(
                            height: 240,
                            width: double.infinity,
                            color: Colors.red,
                            child: Card(
                              child: Column(
                                children: [],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )),
            Positioned(
              left: 16,
              right: 16,
              bottom: 24,
              child: Container(
                height: 58,
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(32), boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 4),
                    color: Colors.black.withOpacity(.2),
                    blurRadius: 3,
                    spreadRadius: 2,
                  )
                ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      onPressed: () {},
                      color: Colors.purple,
                      icon: Icon(Icons.home),
                    ),
                    IconButton(
                      onPressed: () {},
                      color: Colors.grey,
                      icon: Icon(Icons.favorite),
                    ),
                    IconButton(
                      onPressed: () {},
                      color: Colors.grey,
                      icon: Icon(Icons.search),
                    ),
                    IconButton(
                      onPressed: () {},
                      color: Colors.grey,
                      icon: Icon(Icons.face),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

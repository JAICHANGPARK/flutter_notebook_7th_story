import 'package:flutter/material.dart';

class TravelApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       home: TravelHomePage(),
    );
  }
}

class TravelHomePage extends StatefulWidget {
  @override
  _TravelHomePageState createState() => _TravelHomePageState();
}

class _TravelHomePageState extends State<TravelHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            flex: 6,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(24),
                  bottomRight: Radius.circular(24)
                )
              ),
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              icon: Icon(Icons.menu,),
                              color: Colors.white,
                              onPressed: (){},
                            ),
                            CircleAvatar(),
                          ],
                        ),
                      ),

                      Expanded(
                        flex: 2,
                        child: Placeholder(),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          "Where would you like to go?",
                          style: TextStyle(
                              fontSize: 32,
                              color: Colors.white
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Placeholder(),
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 8,
            child: Placeholder(),
          )
        ],
      ),
    );
  }
}

























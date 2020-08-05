import 'package:flutter/material.dart';


class FinanceMainPage extends StatefulWidget {
  @override
  _FinanceMainPageState createState() => _FinanceMainPageState();
}

class _FinanceMainPageState extends State<FinanceMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Text("Convert", style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,

              ),),
            ),
            Expanded(
              flex: 8,
              child: Column(
                children: [
                  Expanded(
                    flex: 3,
                    child: Placeholder(),
                  ),
                  SizedBox(height: 8,),
                  Expanded(
                    flex: 2,
                    child: Placeholder(),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: Colors.deepPurpleAccent,
                  borderRadius: BorderRadius.circular(12)
                ),
              ),
            ),
            Expanded(
              child: Container(),
            )
            
          ],
        ),
      ),
      bottomNavigationBar: Container(
          height: 72,
          child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24),
                topRight: Radius.circular(24),
              ),
              child: BottomAppBar(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.home, color: Colors.deepPurpleAccent,),
                        Text("Home",
                          style: TextStyle(
                          fontSize: 12
                        ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.bookmark, color: Colors.deepPurpleAccent,),
                        Text("Beneficiary",  style: TextStyle(
                            fontSize: 12
                        ),),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.timer, color: Colors.deepPurpleAccent,),
                        Text("History",  style: TextStyle(
                            fontSize: 12
                        ),),
                      ],
                    )
                    ,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.notifications,color: Colors.deepPurpleAccent,),
                        Text("notifications",  style: TextStyle(
                            fontSize: 12
                        ),),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.person, color: Colors.deepPurpleAccent,),
                        Text("Profile",style: TextStyle(
                            fontSize: 12
                        ),),
                      ],
                    )
                  ],
                ),
              ))),
    );
  }
}
























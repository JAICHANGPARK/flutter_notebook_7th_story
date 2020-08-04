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
          children: [
            
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.home),
                        Text("Home"),
                      ],
                    )
                  ],
                ),
              ))),
    );
  }
}
























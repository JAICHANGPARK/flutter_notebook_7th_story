import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String title;
  final String imgPath;
  final String price;

  DetailPage({this.title, this.imgPath, this.price});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: 0,
            child: Container(
              
            ),
          )
        ],
      ),
    );
  }
}

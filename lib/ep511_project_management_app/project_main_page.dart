import 'package:flutter/material.dart';


class PMMainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Stack(
        children: [
          Positioned(
            left: 16,
            bottom: 16,
            child: Row(
              children: [
                Container(
                  height: 32,
                  width: 32,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(color: Colors.white)
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

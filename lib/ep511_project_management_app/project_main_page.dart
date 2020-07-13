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
                  height: 42,
                  width: 42,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 2)
                  ),
                ),
                SizedBox(width: 16,),
                Container(
                  height: 52,
                  width: 52,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 2)
                  ),
                  child: Center(
                    child: Icon(Icons.keyboard_arrow_right, color: Colors.green,),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ButtonClipper extends CustomClipper<Path> {
  double radius = 25.0;
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    Path path = Path()
    ..lineTo(size.width - radius, radius);
    
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}

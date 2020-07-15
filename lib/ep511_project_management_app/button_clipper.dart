import 'package:flutter/material.dart';
import 'dart:math';

class ButtonClipper extends CustomClipper<Path> {
  double radius = 25.0;
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    Path path = Path()
    ..lineTo(size.width - radius, radius)
    ..arcTo(Rect.fromLTWH(0, 0, 70, 100), 1 * pi, 0.5 * pi, false);

    
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}

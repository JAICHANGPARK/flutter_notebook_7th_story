import 'package:flutter/material.dart';
import 'dart:math';

class ButtonClipper extends CustomClipper<Path> {
  double radius = 25.0;
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    Path path = Path()
    ..lineTo(size.width - radius, radius)
    ..arcTo(Rect.fromPoints(Offset(size.width - radius, 0), Offset(size.width, radius)), 1.5 * pi, 0.5 * pi, true);

    
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}

import 'dart:math';

import 'package:flutter/material.dart';

class MainCustomClipper extends CustomClipper<Path> {
  double radius = 50.0;

  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    Path path = Path();
    path.lineTo(size.width - radius, 0);
    path.arcTo(Rect.fromPoints(Offset(size.width - radius, 0), Offset(size.width, radius)), 1.5 * pi, 0.5 * pi, true);
    path.lineTo(size.width, size.height - radius);
    path.arcTo(
        Rect.fromCircle(
            center: Offset(
              size.width - radius,
              size.height - radius,
            ),
            radius: radius),
        0,
        0.5 * pi,
        false);
    path.lineTo(radius / 2, size.height - radius);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}

import 'package:flutter/material.dart';
import 'dart:math';

class ButtonClipper extends CustomClipper<Path> {
  double radius = 25.0;

  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    Path path = Path()
      ..lineTo(size.width - radius, radius + 20)
      ..arcTo(Rect.fromPoints(Offset(size.width - radius, 0), Offset(size.width, radius)), 1.5 * pi, 0.5 * pi, true)
      ..lineTo(size.width - (radius/ 2), size.height - radius)
      .. arcTo(
          Rect.fromCircle(
              center: Offset(
                size.width - (radius * 1.525),
                size.height - radius,
              ),
              radius: radius),
          0,
          0.5 * pi,
          false)
    ..lineTo(radius, size.height)
    ..arcTo(Rect.fromLTRB(radius / 2, (size.height - radius), radius, size.height),
        0.5 * pi,
        0.5 * pi, false)
    ..lineTo( 0, radius)
      ..arcTo(Rect.fromLTWH(0, 0, 70, 100), 1 * pi, 0.5 * pi, false);
    ;


    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}

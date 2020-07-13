
import 'package:flutter/material.dart';

class MainCustomClipper extends CustomClipper{
  @override
  getClip(Size size) {
    // TODO: implement getClip
  Path path = Path();
  return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }

}
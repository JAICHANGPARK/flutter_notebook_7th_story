import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'ep547_home_app/home_app.dart';

void main() {

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.white,
    systemNavigationBarColor: Colors.white,
  ));

  SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);

  runApp(HomeApp());
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'ep547_home_app/home_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.white,
  ));



  runApp(HomeApp());
}

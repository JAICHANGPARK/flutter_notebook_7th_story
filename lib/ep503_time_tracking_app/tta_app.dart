import 'package:flutter/material.dart';
import 'time_tracking_main_page.dart';

class TimeTrackingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TimeTrackingMainPage(),
    );
  }
}

import 'package:flutter/material.dart';

class TopBadgesItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 38,
          decoration: BoxDecoration(
            color: Colors.red
          ),
        )
      ],
    );
  }
}

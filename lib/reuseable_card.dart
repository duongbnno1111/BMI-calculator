import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {
  final Color color;
  final Widget cardChild;
  ReuseableCard({@required this.color, this.cardChild});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(9),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
      child: cardChild,
    );
  }
}


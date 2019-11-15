import 'package:flutter/material.dart';

class GenderContainer extends StatelessWidget {
  final Icon genderIcon;
  final String genderText;
  GenderContainer({this.genderIcon, this.genderText});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        genderIcon,
        SizedBox(
          height: 15,
        ),
        Text(
          genderText,
          style: TextStyle(fontSize: 20),
        ),
      ],
    );
  }
}
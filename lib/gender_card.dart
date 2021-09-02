import 'package:flutter/material.dart';

class GenderCard extends StatelessWidget {
  final String gender;
  final String img;

  GenderCard({this.gender, this.img});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image(
          image: AssetImage('assets/$img.png'),
          color: Colors.tealAccent,
          height: 60,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          gender,
          style: TextStyle(
            fontSize: 18,
            color: Color(0xFF8D8E98),
          ),
        )
      ],
    );
  }
}

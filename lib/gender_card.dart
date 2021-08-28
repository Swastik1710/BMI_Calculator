import 'package:flutter/material.dart';

class GenderCard extends StatelessWidget {
  final String gender;
  final IconData icon;

  GenderCard({this.gender, this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 60,
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

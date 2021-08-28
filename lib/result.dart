import 'package:bmi_calculator/card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String value;
  final String result;
  final String advice;

  ResultPage(
      {@required this.result, @required this.value, @required this.advice});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 30, left: 12),
              child: Text(
                'Your Result',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 4,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: ReusableCard(
              colour: Color(0xFF1D1E33),
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    result,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.greenAccent,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    value,
                    style: TextStyle(
                      fontSize: 100,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        'Underweight BMI Range:',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        '< 18.5',
                        style: TextStyle(
                          fontSize: 20,
                          letterSpacing: 2,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'Normal BMI Range:',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        '18.5 - 24.9',
                        style: TextStyle(
                          fontSize: 20,
                          letterSpacing: 2,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'Overweight BMI Range:',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        '25 - 29.9',
                        style: TextStyle(
                          fontSize: 20,
                          letterSpacing: 2,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'Obese BMI Range:',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        '>= 30 ',
                        style: TextStyle(
                          fontSize: 20,
                          letterSpacing: 2,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    advice,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Color(0xFFEB1555),
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: 60,
              child: FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'RE-CALCULATE',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

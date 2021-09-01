import 'package:flutter/material.dart';

import '../card.dart';

class SuggestionsPage4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Suggestions',
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: Color(0xFF1D1E33),
                    cardChild: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Eat More Calories Than Your Body Burns',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 22,
                            letterSpacing: 2,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: Color(0xFF1D1E33),
                    cardChild: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Eat Plenty of Protein',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 22,
                            letterSpacing: 2,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: Color(0xFF1D1E33),
                    cardChild: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Eat at Least 3 Times per Day',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 22,
                            letterSpacing: 2,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: Color(0xFF1D1E33),
                    cardChild: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Fill up on Plenty of Carbs and Fat',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 22,
                            letterSpacing: 2,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: Color(0xFF1D1E33),
                    cardChild: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Lift Weights and Improve Your Strength',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 22,
                            letterSpacing: 2,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: Color(0xFF1D1E33),
                    cardChild: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Eat Energy-Dense Foods',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 22,
                            letterSpacing: 2,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Container(
              color: Color(0xFFEB1555),
              margin: EdgeInsets.only(top: 100),
              width: double.infinity,
              height: 20,
              child: FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
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
          ),
        ],
      ),
    );
  }
}

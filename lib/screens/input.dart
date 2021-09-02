import 'package:bmi_calculator/calculations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:numberpicker/numberpicker.dart';
import '../card.dart';
import '../counter_btn.dart';
import '../gender_card.dart';
import 'result.dart';

const inactiveColor = Color(0xFF1D1E33);
const activeColor = Color(0xFF111328);

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height_feet = 5;
  int height_inch = 6;
  int weight = 60;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: ReusableCard(
                colour: Color(0xFF1D1E33),
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Are you a?',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    IntrinsicHeight(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedGender = Gender.male;
                                });
                              },
                              child: ReusableCard(
                                colour: selectedGender == Gender.male
                                    ? activeColor
                                    : inactiveColor,
                                cardChild: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: GenderCard(
                                    gender: 'MALE',
                                    img: 'male',
                                    // icon: FontAwesomeIcons.mars,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          VerticalDivider(
                            color: Colors.white,
                            thickness: 0,
                            indent: 10,
                            endIndent: 10,
                            width: 20,
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedGender = Gender.female;
                                });
                              },
                              child: ReusableCard(
                                colour: selectedGender == Gender.female
                                    ? activeColor
                                    : inactiveColor,
                                cardChild: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: GenderCard(
                                    gender: 'FEMALE',
                                    img: 'female',
                                    // icon: FontAwesomeIcons.venus,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ReusableCard(
                colour: Color(0xFF1D1E33),
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        'HEIGHT',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    IntrinsicHeight(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: ReusableCard(
                              colour: Color(0xFF1D1E33),
                              cardChild: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    'FEET',
                                    style: TextStyle(
                                      color: Color(0xFF8D8E98),
                                      fontSize: 18,
                                    ),
                                  ),
                                  Text(
                                    height_feet.toString(),
                                    style: TextStyle(
                                      fontSize: 50,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.tealAccent,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      CounterButton(
                                        icon: FontAwesomeIcons.minus,
                                        onPressed: () {
                                          setState(() {
                                            if (height_feet > 0) {
                                              height_feet--;
                                            }
                                          });
                                        },
                                      ),
                                      CounterButton(
                                        icon: FontAwesomeIcons.plus,
                                        onPressed: () {
                                          setState(() {
                                            height_feet++;
                                          });
                                        },
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          VerticalDivider(
                            color: Colors.white,
                            thickness: 0,
                            indent: 20,
                            endIndent: 20,
                            width: 20,
                          ),
                          Expanded(
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: ReusableCard(
                                    colour: Color(0xFF1D1E33),
                                    cardChild: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Text(
                                          'INCH',
                                          style: TextStyle(
                                            color: Color(0xFF8D8E98),
                                            fontSize: 18,
                                          ),
                                        ),
                                        Text(
                                          height_inch.toString(),
                                          style: TextStyle(
                                            fontSize: 50,
                                            fontWeight: FontWeight.w900,
                                            color: Colors.tealAccent,
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: <Widget>[
                                            CounterButton(
                                                icon: FontAwesomeIcons.minus,
                                                onPressed: () {
                                                  setState(() {
                                                    if (height_inch > 0) {
                                                      height_inch--;
                                                    }
                                                  });
                                                }),
                                            CounterButton(
                                                icon: FontAwesomeIcons.plus,
                                                onPressed: () {
                                                  setState(() {
                                                    if (height_inch < 11)
                                                      height_inch++;
                                                  });
                                                }),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ReusableCard(
                colour: Color(0xFF1D1E33),
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      'WEIGHT',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    NumberPicker(
                      itemCount: 5,
                      itemWidth: 70,
                      axis: Axis.horizontal,
                      selectedTextStyle: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.tealAccent,
                      ),
                      textStyle: TextStyle(
                        fontSize: 15,
                        color: Color(0xFF8D8E98),
                      ),
                      value: weight,
                      minValue: 1,
                      maxValue: 500,
                      onChanged: (value) {
                        setState(() {
                          weight = value;
                        });
                      },
                    ),
                    Text(
                      'Kg',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF8D8E98),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Color(0xFFEB1555),
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: 60,
              child: FlatButton(
                onPressed: () async {
                  CalculatorBrain brain = CalculatorBrain(
                      heightFeet: height_feet,
                      heightInch: height_inch,
                      weight: weight);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ResultPage(
                                value: brain.calculate(),
                                result: brain.result(),
                                advice: brain.advice(),
                                suggestionNumber: brain.suggestionNumber(),
                                soundNumber: brain.soundNumber(),
                              )));
                  // int num = playSound(double.parse(brain.calculate()));
                  // final cache = AudioCache();
                  // AudioPlayer player = await cache.play('note$num.wav');
                },
                child: Text(
                  'CALCULATE',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                  ),
                ),
              ),
            )
          ]),
    );
  }
}

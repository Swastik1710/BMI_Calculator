import 'package:bmi_calculator/calculations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'card.dart';
import 'counter_btn.dart';
import 'gender_card.dart';
import 'result.dart';
import 'package:audioplayers/audioplayers.dart';

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
  int height_feet = 4;
  int height_inch = 6;
  int weight = 60;
  int age = 20;

  int playSound(double bmi) {
    if (bmi >= 30) {
      return 1;
    } else if (bmi >= 25 && bmi < 30) {
      return 2;
    } else if (bmi >= 18.5 && bmi < 25) {
      return 3;
    } else {
      return 4;
    }
  }
  // Color maleColor = inactiveColor;
  // Color femaleColor = inactiveColor;
  //
  // void cardColor(Gender gender) {
  //   if (gender == Gender.male) {
  //     if (maleColor == inactiveColor) {
  //       maleColor = activeColor;
  //       femaleColor = inactiveColor;
  //     } else {
  //       maleColor = inactiveColor;
  //     }
  //   }
  //   if (gender == Gender.female) {
  //     if (femaleColor == inactiveColor) {
  //       femaleColor = activeColor;
  //       maleColor = inactiveColor;
  //     } else {
  //       femaleColor = inactiveColor;
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <
          Widget>[
        Expanded(
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
                    cardChild: GenderCard(
                      gender: 'MALE',
                      icon: FontAwesomeIcons.mars,
                    ),
                  ),
                ),
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
                    cardChild: GenderCard(
                      gender: 'FEMALE',
                      icon: FontAwesomeIcons.venus,
                    ),
                  ),
                ),
              )
            ],
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
                                        if (height_feet > 1) {
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
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
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
            //     cardChild: Column(
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       children: <Widget>[
            //         Text(
            //           'HEIGHT',
            //           style: TextStyle(
            //             color: Color(0xFF8D8E98),
            //             fontSize: 18,
            //           ),
            //         ),
            //         Row(
            //           textBaseline: TextBaseline.alphabetic,
            //           mainAxisAlignment: MainAxisAlignment.center,
            //           crossAxisAlignment: CrossAxisAlignment.baseline,
            //           children: <Widget>[
            //             Text(
            //               height.toString(),
            //               style: TextStyle(
            //                 fontSize: 50,
            //                 fontWeight: FontWeight.w900,
            //               ),
            //             ),
            //             Text(
            //               'cm',
            //               style: TextStyle(
            //                 color: Color(0xFF8D8E98),
            //               ),
            //             ),
            //           ],
            //         ),
            //         SliderTheme(
            //           data: SliderTheme.of(context).copyWith(
            //               thumbColor: Color(0xFFEB1555),
            //               activeTrackColor: Colors.white,
            //               inactiveTrackColor: Color(0xFF8D8E98),
            //               overlayColor: Color(0x40EB1555),
            //               thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
            //               overlayShape: RoundSliderOverlayShape(overlayRadius: 30)),
            //           child: Slider(
            //             value: height.toDouble(),
            //             min: 120.0,
            //             max: 220.0,
            //             // activeColor: Color(0xFFEB1555),
            //             // inactiveColor: Color(0xFF8D8E98),
            //             onChanged: (double newValue) {
            //               setState(() {
            //                 height = newValue.round();
            //               });
            //             },
            //           ),
            //         ),
            //       ],
            //     ),
          ),
        ),
        Expanded(
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
                        'WEIGHT',
                        style: TextStyle(
                          color: Color(0xFF8D8E98),
                          fontSize: 18,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            weight.toString(),
                            style: TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Text(
                            'kg',
                            style: TextStyle(
                              color: Color(0xFF8D8E98),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          CounterButton(
                            icon: FontAwesomeIcons.minus,
                            onPressed: () {
                              setState(() {
                                if (weight > 1) {
                                  weight--;
                                }
                              });
                            },
                          ),
                          CounterButton(
                            icon: FontAwesomeIcons.plus,
                            onPressed: () {
                              setState(() {
                                weight++;
                              });
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
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
                              'AGE',
                              style: TextStyle(
                                color: Color(0xFF8D8E98),
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              age.toString(),
                              style: TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                CounterButton(
                                    icon: FontAwesomeIcons.minus,
                                    onPressed: () {
                                      setState(() {
                                        if (age > 1) {
                                          age--;
                                        }
                                      });
                                    }),
                                CounterButton(
                                    icon: FontAwesomeIcons.plus,
                                    onPressed: () {
                                      setState(() {
                                        age++;
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
        Container(
          color: Color(0xFFEB1555),
          margin: EdgeInsets.only(top: 10),
          width: double.infinity,
          height: 60,
          child: FlatButton(
            onPressed: () {
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
                          )));
              int num = playSound(double.parse(brain.calculate()));
              final player = AudioCache();
              player.play('note$num.wav');
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

import 'package:bmi_calculator/components/round_IconButton.dart';
import 'package:bmi_calculator/main.dart';
import 'package:bmi_calculator/screens/result_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/components/icon_content.dart';
import 'package:bmi_calculator/components/reusable%20card.dart';
import 'package:bmi_calculator/components/const.dart';
import 'package:bmi_calculator/calculate_brain.dart';
import '../components/bottom_Button.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  int height = 180;
  int weight = 60;
  int age= 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI Calculator',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: selectedGender == Gender.male
                        ? kActiveContainerColor
                        : kInactiveCardColor,
                    cardchild: IconContent(
                        icon: FontAwesomeIcons.mars, label: 'MALE'),
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: selectedGender == Gender.female
                        ? kActiveContainerColor
                        : kInactiveCardColor,
                    cardchild: IconContent(
                        icon: FontAwesomeIcons.venus, label: 'FEMALE'),
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: kActiveContainerColor,
              cardchild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: kLabelTextstyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: kNumberstyle,
                      ),
                      Text(
                        'cm',
                        style: kLabelTextstyle,
                      ),
                    ],
                  ),
                  SliderTheme(data: SliderTheme.of(context).copyWith(
                    thumbColor: Color(0xFFEB1555),
                    activeTrackColor: Colors.white,
                    inactiveTrackColor: Color(0xFF8D8E98),
                    overlayColor: Color(0x29EB1555),
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                  ), child: Flexible(
                    child: Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
    )
                  ),
                ],
              ),
              onPress: () {}, // Placeholder for other content
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: kActiveContainerColor,
                    cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'WEIGHT',
                          style: kLabelTextstyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kLabelTextstyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(icon: Icons.remove, onpressed: (){
                              setState(() {
                                weight--;
                              });
                            },),
                        SizedBox(
                          width: 10.0,
                        ),
                            RoundIconButton(icon: Icons.add, onpressed: (){
                              setState(() {
                                weight++;
                              });
                            },
                            ),
  ],
                        ),
                      ],
                    ),
                    onPress: () {}, // Placeholder for other content
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: kActiveContainerColor,
                    cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('AGE',
                          style: kLabelTextstyle,
                        ),
                        Text(
                          age.toString(),
                          style: kLabelTextstyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(icon: Icons.remove, onpressed: (){
                              setState(() {
                                age--;
                              });
                            },),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(icon: Icons.add, onpressed: (){
                              setState(() {
                                age++;
                              });
                            },
                            ),
                          ],
                        )
                      ],
                    ), // Placeholder for other content
                    onPress: () {},
                  ),
                ),
              ],
            ),
          ),
          Bottom_Button(onTap:() {
            CalculateBrain calc = new  CalculateBrain(height: height,weight: weight);
            Navigator.push(context,
                MaterialPageRoute(
                    builder: (context)=>ResultPages(bmiresult: calc.calculateBMI(),resultText: calc.getResult(),Interpetation: calc.getInterpetation(),)
                )
            )
            ;},
            buttontitle: 'CALCULATE',),
        ],
      ),
    );
  }
}



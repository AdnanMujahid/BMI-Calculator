import 'package:bmi_calculator/components/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:bmi_calculator/components/reusable%20card.dart';
import '../components/bottom_Button.dart';


class ResultPages extends StatelessWidget {
  ResultPages({required this.bmiresult, required this.resultText, required this.Interpetation});
  final String bmiresult;
  final String resultText;
  final String Interpetation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Text('BMI CALCULATOR'),
       backgroundColor: Colors.red,
       foregroundColor: Colors.white,
     ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text('Your Result',
                  style: kBodyTextStyle,
                ),
              ),
          ),
          Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kActiveContainerColor,
                cardchild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(resultText,
                      style: kresultTextStyle,
                    ),
                    Text(
                      bmiresult,
                      style: kBMITextstyle,
                    ),
                    Text(
                      Interpetation,
                      style: kBodyTextStyle,
                    ),

                  ],
                ),
                onPress: (){

                },
              ),
          ),
          Bottom_Button(onTap: (){
            Navigator.pop(context);
          }, buttontitle: 'RE-CALCULATE',),
        ],
      ),
    );
  }
}

import 'package:bmi_calculator/components/constants.dart';
import 'package:bmi_calculator/pages/input_page.dart';
import 'package:flutter/material.dart';
import '../components/reusable_card.dart';
import '../components/bottom_button.dart';



class ResultPage extends StatelessWidget {
  ResultPage({required this.bmiResult,required this.bmiText,required this.bmiReport});

  final String bmiResult;
  final String bmiText;
  final String bmiReport;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BMI Result"),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Container(
            padding: EdgeInsets.all(15.0),
            alignment: Alignment.bottomCenter,
            child: Text("Your Result", style: kTitleTextStyle,),
          )),
          Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kActiveColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(bmiText.toUpperCase(), style: kResultTextStyle,),
                    Text(bmiResult, style: kBMINumberextStyle),
                    Text(bmiReport, style: TextStyle(fontSize: 21.0),
                    textAlign: TextAlign.center,),
                  ],
                ),
          )),
          BottomButton(title: "Re-Calculator", onTap: (){
            Navigator.pop(context);
            
          },),

        ],
      )
    );
  }
}

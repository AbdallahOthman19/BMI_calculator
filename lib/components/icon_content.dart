import 'package:flutter/material.dart';
import 'constants.dart';

class CardChildDetalis extends StatelessWidget {

  CardChildDetalis({required this.textMF, required this.iconFM});


  final String textMF;
  final IconData iconFM;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(iconFM,size: 80.0,),
        SizedBox(height: 15.0,),
        Text(textMF,style: kLabelTextStyle),
      ],
    );
  }
}
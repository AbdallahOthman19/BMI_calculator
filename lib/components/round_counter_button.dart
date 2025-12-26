import 'package:flutter/material.dart';

class RoundCounterButton extends StatelessWidget {

  RoundCounterButton({required this.icon, required this.action});
  final IconData icon;
  final Function() action;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      elevation: 6.0,
      onPressed: action,
    );
  }
}

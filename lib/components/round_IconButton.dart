import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({required this.icon, required this.onpressed});
  final IconData icon;
  final VoidCallback onpressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onpressed,
      child: Icon(icon,
        color: Colors.white,
      ),
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      fillColor: Color(0xFF4C4F5E),);
  }
}

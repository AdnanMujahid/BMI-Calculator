import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/const.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';


class IconContent extends StatelessWidget {
  final IconData icon;
  final String label;
  IconContent({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
          color: Colors.white,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: kLabelTextstyle,
        ),
      ],
    );
  }
}

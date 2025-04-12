import 'package:flutter/material.dart';

import 'const.dart';

class Bottom_Button extends StatelessWidget {
  const Bottom_Button({
    required this.onTap,
    required this.buttontitle,
  });



  final VoidCallback onTap;
  final String buttontitle;

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: onTap,
      child: Container(
        child:Center(
          child: Text( buttontitle,
            style: largeButtonstyle,
          ),
        ),
        color: Colors.red,
        margin: EdgeInsets.all(10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}
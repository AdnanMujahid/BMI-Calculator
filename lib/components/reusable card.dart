import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
final Color colour;
final Widget cardchild;
final VoidCallback onPress;
ReusableCard({required this.colour, required this.cardchild, required this.onPress});

@override
Widget build(BuildContext context) {
  return GestureDetector(
    child: Container(
      child: cardchild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    ),
    onTap: onPress,
  );
}
}

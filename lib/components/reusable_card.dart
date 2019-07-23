import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colorTag, this.childCard, this.onPress});

  final Color colorTag;
  final Widget childCard;
  // Dart puede usar Functions como si fuera un data type, y usarlo como si fuese una variable mas.
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: childCard,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colorTag,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}

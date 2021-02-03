import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final Function onPressed;
  final Color color;
  final Widget textChild;

  RoundedButton({this.onPressed, this.color, this.textChild});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: textChild,
      onPressed: onPressed,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(height: 60.0, width: 140.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(40.0),
        ),
      ),
      fillColor: color,
    );
  }
}

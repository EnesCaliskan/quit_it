import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {


  final String labelText;
  final TextInputType textInputType;
  final TextEditingController controller;

  CustomTextField({@required this.labelText, @required this.textInputType, this.controller});


  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: textInputType,
      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      decoration: InputDecoration(
        fillColor: Colors.black,
        labelText: labelText,
        labelStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}

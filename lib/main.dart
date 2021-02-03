import 'package:flutter/material.dart';
import 'package:quit_it/home_page.dart';
import 'constants.dart';

void main() => runApp(QuitIt());

class QuitIt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        primaryColor: kMainAccentColor,
        scaffoldBackgroundColor: kMainScaffoldColor
      ),
      home: HomePage(),
    );
  }
}

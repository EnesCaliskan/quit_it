import 'package:flutter/material.dart';
import 'package:quit_it/constants.dart';

class ProgressBar extends StatelessWidget {
  double progress;
  ProgressBar({this.progress});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350.0,
      width: 350.0,
      child: Padding(
        padding: EdgeInsets.all(30.0),
        child: CircularProgressIndicator(
          backgroundColor: kPastelInactivePink,
          valueColor: AlwaysStoppedAnimation(kPastelGreen),
          strokeWidth: 10.0,
          value: progress,
        ),
      ),
    );
  }
}

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const kMainAccentColor = Color(0XFFF9968B);
const kMainScaffoldColor = Color(0XFF76CDCD);
const kPastelGreen = Color(0xFF5AA469);
const kPastelInactivePink =  Color(0xFFEFBBCF);
const kPastelRed = Color(0xFFff6666);

const kMainTextStyle = TextStyle(
  fontSize: 20.0,
  fontWeight: FontWeight.w400,
  color: Colors.white,
);

class kButtonText extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;

  kButtonText({this.text, this.color, this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.nunito(
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
        color: color,
      ),
    );
  }
}

const List<String> quotes = [
  //1 day
  'By the one-day mark, you have already decreased your risk of heart attack. '
  'This is because of reduced constriction of veins and arteries as well as increased oxygen levels '
  'that go to the heart to boost its functioning. Nicotine levels in your bloodstream have also decreased '
  'to negligible amounts at this time. ',
  //2 days
  'At 48 hours, previously damaged nerve endings start to regrow. '
  'You may also start to notice that senses that were previously dulled due to smoking improve. '
  'You may realize you’re smelling and tasting things better than you were before. ',
  //3days
  'Within three days after quitting smoking, you will often find yourself breathing more easily. '
  'This is because the bronchial tubes inside the lungs have started to relax and open up more. '
  'This makes air exchange between carbon dioxide and oxygen easier. '
  //7days
  'The one-week milestone is important not only for your health, but for your success rate in quitting '
  'smoking successfully long term. '
  'Smokers who successfully make it one week without '
  'smoking are nine times as likely to successfully quit. ',
  //14days
  'Within two weeks of quitting smoking, you may start to notice you’re not only breathing easier. '
  'You’re also walking easier. This is thanks to improved circulation and oxygenation. '
  'Your lung function also increases as much as 30 percent about two weeks after stopping smoking, '
  'notes the University of Michigan.',
  //30days
  'In just one short month, you can experience many health changes related to stopping smoking. '
  'One is feeling a sense of heightened overall energy. You may also notice that many smoking-related symptoms have decreased, '
  'such as sinus congestion and shortness of breath with exercise. ',
  //default
  'Congrats! You are on a streak!'
];


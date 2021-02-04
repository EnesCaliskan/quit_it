import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quit_it/balance_calculator.dart';
import 'package:quit_it/constants.dart';
import 'package:quit_it/main.dart';
import 'package:quit_it/quote_sender.dart';
import 'package:quit_it/reusable_card.dart';
import 'rounded_button.dart';
import 'circular_progress_bar.dart';
import 'quote_sender.dart';
import 'preferences_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double balance = 0.0;
  int streak = 0;
  double progress = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: kButtonText(
          text: 'Quit It!',
          fontSize: 22.0,
          color: Colors.black,
        ),
        leading: IconButton(
          icon: Icon(
            Icons.account_circle_rounded,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Preferences()));
          },
        ),
        actions: [
          GestureDetector(
            onTap: () {
              setState(() {
                print('hello');
              });
            },
            child: Container(
              child: Row(
                children: [
                  kButtonText(
                    text: pMoney.toString(),
                    color: Colors.black,
                    fontSize: 22.0,
                  ),
                  Icon(
                    Icons.attach_money,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: ReusableCard(
              colour: kMainAccentColor,
              cardChild: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: ProgressBar(
                      progress: progress,
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: kButtonText(
                      text:
                          '${streak.toString()} ${streak == 0 || streak == 1 ? 'day' : 'days'}',
                      color: Colors.black,
                      fontSize: 72.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: ReusableCard(
              colour: kMainAccentColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(20.0),
                    child: kButtonText(
                      text: 'Good day ${pName == ''? 'user':pName} ! , have you smoked today? ',
                      color: Colors.black,
                      fontSize: 22.0,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RoundedButton(
                        textChild: kButtonText(
                          text: 'No!',
                          color: Colors.black,
                          fontSize: 20.0,
                        ),
                        color: kPastelGreen,
                        onPressed: () {
                          BalanceCalculator blc = new BalanceCalculator();
                          QuoteSender quoteSender = new QuoteSender();
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return CustomDialog(
                                  streakText:
                                      '🔥 Keep it up! You are on fire! 🔥',
                                  data: quoteSender.getQuote(streak),
                                );
                              });
                          setState(() {
                            streak++;
                            progress = progress + 0.1;
                          });
                        },
                      ),
                      RoundedButton(
                        color: kPastelRed,
                        textChild: kButtonText(
                          text: 'Yes :(',
                          color: Colors.black,
                          fontSize: 20.0,
                        ),
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return CustomDialog(
                                    streakText:
                                        '😔 You have lost your progress 😔',
                                    data: 'Oh no :( Your streak has ended');
                              });
                          setState(() {
                            streak = 0;
                            progress = 0;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CustomDialog extends StatelessWidget {
  final String data;
  final String streakText;
  CustomDialog({@required this.data, @required this.streakText});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 6.0,
      backgroundColor: Colors.white,
      child: Expanded(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                kButtonText(
                  text: streakText,
                  fontSize: 16.0,
                  color: Colors.red,
                ),
                IconButton(
                    icon: Icon(
                      Icons.close,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: kButtonText(
                text: data,
                color: Colors.black,
                fontSize: 18.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

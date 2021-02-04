import 'package:flutter/material.dart';
import 'package:quit_it/constants.dart';
import 'package:quit_it/reusable_card.dart';
import 'custom_text_field.dart';
import 'rounded_button.dart';
import 'home_page.dart';

String pName = '';
int pCigs = 0;
double pMoney = 0.0;

class Preferences extends StatelessWidget {
  final nameController = TextEditingController();
  final cigsController = TextEditingController();
  final moneyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: kButtonText(
          text: 'Your information',
          color: Colors.black,
          fontSize: 22.0,
        ),
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_rounded,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
              padding: EdgeInsets.all(15.0),
              child: kButtonText(
                text: 'Welcome! Let\'s get to know you better! ',
                color: Colors.black,
                fontSize: 36.0,
              )),
          Expanded(
            child: ReusableCard(
              colour: kMainAccentColor,
              cardChild: Padding(
                padding: EdgeInsets.all(30.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomTextField(
                      controller: nameController,
                      textInputType: TextInputType.text,
                      labelText: 'Can you tell your name?',
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    CustomTextField(
                      controller: cigsController,
                      textInputType: TextInputType.number,
                      labelText: 'How many do you smoke in a day?',
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    CustomTextField(
                      controller: moneyController,
                      textInputType: TextInputType.number,
                      labelText: 'How much do you pay for a pack?',
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 25.0),
                      child: RoundedButton(
                        color: kPastelGreen,
                        textChild:
                          kButtonText(
                            text: 'Save',
                            color: Colors.black,
                            fontSize: 20.0,
                        ),
                        onPressed: () {
                          pName = nameController.text;
                          pCigs = int.tryParse(nameController.text);
                          pMoney = double.tryParse(moneyController.text);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

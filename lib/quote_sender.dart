
import 'package:flutter/cupertino.dart';
import 'constants.dart';

class QuoteSender {

  String getQuote(int days) {
    switch (days) {
      case 1:
        return quotes[0].toString();
        break;
      case 2:
        return quotes[1].toString();
        break;
      case 3:
        return quotes[2].toString();
        break;
      case 7:
        return quotes[3].toString();
        break;
      case 14:
        return quotes[4].toString();
        break;
      case 30:
        return quotes[5].toString();
        break;
      default:
        return 'Congrats! You are on a streak! Keep it up!';
        break;
    }
  }
}
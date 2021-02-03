
import 'package:flutter/cupertino.dart';
import 'constants.dart';

class QuoteSender {

  String getQuote(int days) {
    if(days == 1) {
      return quotes[0].toString();
    } else if(days == 2) {
      return quotes[1].toString();
    }
    else if(days == 3) {
      return quotes[2].toString();
    }
    else if(days == 7) {
      return quotes[3].toString();
    }
    else if(days == 14) {
      return quotes[4].toString();
    }
    else if(days == 30) {
      return quotes[5].toString();
    }
    else if(days == 0){
      return quotes[6].toString();
    }
  }
}
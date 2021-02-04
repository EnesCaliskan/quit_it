
import 'package:quit_it/preferences_page.dart';

class BalanceCalculator {
  double balance = 0.0;

  double getBalance(int days) {
    if(days % pCigs == 0) {
      balance = balance + pMoney;
    }
    return balance;
  }

}
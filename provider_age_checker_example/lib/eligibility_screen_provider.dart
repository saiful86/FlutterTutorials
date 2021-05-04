
import 'package:flutter/material.dart';

class EligibilityScreenProvider extends ChangeNotifier{

  String _message = 'You have not given any input';
  bool _isEligible = false;

  String get message => _message;

  bool get isEligible => _isEligible;

  void checkEligibility(int age){
    if(age >= 18){
      // you are eligible
      eligible();
    }else{
      // you are not eligible
      notEligible();
    }
  }

  void eligible() {
    _isEligible = true;
    _message = 'You are eligible to apply for driving license';

    notifyListeners();
  }

  void notEligible() {
    _isEligible = false;
    _message = 'You are not eligible to apply for driving license';

    notifyListeners();
  }
}
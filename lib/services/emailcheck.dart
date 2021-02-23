import 'package:flutter/cupertino.dart';
import 'package:email_validator/email_validator.dart';

class Logstat with ChangeNotifier {
  String _emalitext;
  String _emailpass;
  String _emailerror;
  String _erorrpass;
  void changelogin(String newuser){
    _emalitext=newuser;
    if (EmailValidator.validate(_emalitext)==false){_emailerror='Неправильный Email!';} else {_emailerror=null;}
    notifyListeners();
  }
  void changpass(String newuserpass){
    _emailpass=newuserpass;
    if (_emailpass.length<8){_erorrpass='Минимум 8 символов!!!';} else {_erorrpass=null;}
    notifyListeners();
  }
  String geterorruser(){
    return _emailerror;
  }

  String geterorrpass(){
    return _erorrpass;
  }
  String getuser(){
    return _emalitext;
  }
  String getpass(){
    return _emailpass;
  }
}
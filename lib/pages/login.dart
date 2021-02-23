import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
import 'package:eclipse_cosmetic/services/emailcheck.dart';
import 'package:provider/provider.dart';


class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Logstat>(
      create: (context) => Logstat(),
      child: Loginpage1()
    );
  }
}

class Loginpage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
//        mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
//              height: 50,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Text('Вход в систему ART-VISAGE',
                style: TextStyle(fontSize: 24),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
//                  obscureText: true,
                textAlign: TextAlign.start,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  hintText: 'Email',
                  hintStyle: TextStyle(color: Color(0X99000000)),
                  border: OutlineInputBorder(
                    gapPadding: 30,
                    //                  borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.grey, width: 5.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    //                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  errorBorder: OutlineInputBorder(
//                      borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.red),
                  ),
                  errorText: context.watch<Logstat>().geterorruser(),
                ),
                textInputAction: TextInputAction.next,
//      onSaved: emailvalue=>context.watch<Emailcheck>().get
//              focusNode: _tokenFocusNode,
                onChanged: (value){
                  context.read<Logstat>().changelogin(value);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                obscureText: true,
                textAlign: TextAlign.start,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  hintText: 'Enter your password',
                  hintStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                    gapPadding: 30,
                    borderSide: BorderSide(color: Colors.grey, width: 5.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),
                  errorText: context.watch<Logstat>().geterorrpass(),
                ),
                textInputAction: TextInputAction.next,
                onSaved: (value) {
                },
                onChanged: (String value) {
                  context.read<Logstat>().changpass(value);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
//                color: Colors.white,
                child: Text("Забыли пароль?",
                  textAlign: TextAlign.left,
                  style: TextStyle(color: Colors.indigo),
                ),
                onPressed: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: RaisedButton(
                  color: Colors.indigo,
                  child: Text(
                    "Вход",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: FlatButton(
//                color: Colors.white,
                  child: Text(
                    "Регистрация",
                    style: TextStyle(color: Colors.indigo),
                  ),
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:eclipse_cosmetic/services/emailcheck.dart';
import 'package:provider/provider.dart';

class Recoverpass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Logstat>(
        create: (context) => Logstat(),
        child: Recoverwidget()
    );
  }
}
class Recoverwidget extends StatelessWidget {
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
                child: Text('Восстановление пароля',
                  style: TextStyle(fontSize: 24,fontFamily: 'Roboto'),),
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
              child: Center(
                child: RaisedButton(
                  color: Colors.indigo,
                  child: Text(
                    "Отправить",
                    style: TextStyle(color: Colors.white),
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

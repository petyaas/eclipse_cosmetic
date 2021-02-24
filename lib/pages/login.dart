import 'package:eclipse_cosmetic/widgets/input_text.dart';
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

class Loginpage1 extends StatefulWidget {
  @override
  _Loginpage1State createState() => _Loginpage1State();
}

class _Loginpage1State extends State<Loginpage1> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool _obscurePassword = true;
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
                style: TextStyle(fontSize: 24,fontFamily: 'Roboto'),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InputText(
                hint: 'Email',
                controller: _emailController,
              )
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InputText(
                hint: 'Password',
                controller: _passwordController,
                obscure: _obscurePassword,
                actionWidget: IconButton(
                  icon: Icon(_obscurePassword
                    ?Icons.remove_red_eye
                    :Icons.remove_red_eye_outlined
                  ),
                  onPressed: (){
                    setState(() {
                      _obscurePassword=!_obscurePassword;
                    });
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
//                color: Colors.white,
                child: Text("Забыли пароль?".toUpperCase(),
                  textAlign: TextAlign.left,
                  style: TextStyle(color: Colors.indigo, fontSize: 14,fontFamily: 'Roboto'),
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
                    "Регистрация".toUpperCase(),
                    style: TextStyle(color: Colors.indigo, fontSize: 16,fontFamily: 'Roboto'),
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

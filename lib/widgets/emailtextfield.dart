
import 'package:flutter/material.dart';


class EmailTextField extends StatelessWidget {
  final String hinttext;
  final String errortext;
  Function emailvalue;

   EmailTextField({Key key, this.hinttext, this.emailvalue, this.errortext}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
//                  obscureText: true,
      textAlign: TextAlign.start,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        hintText: hinttext,
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
        errorText: errortext,
      ),
      textInputAction: TextInputAction.next,
//      onSaved: emailvalue=>context.watch<Emailcheck>().get
//              focusNode: _tokenFocusNode,
      onChanged: emailvalue,
    );


  }
}
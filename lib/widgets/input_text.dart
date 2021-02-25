import 'package:flutter/material.dart';
class InputText extends StatelessWidget {
  final String hint;
  //final String errortext;
  final TextEditingController controller;
  final bool obscure;
  final Widget actionWidget;

  const InputText({Key key, this.hint, this.controller, this.obscure=false, this.actionWidget}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscure,
      textAlign: TextAlign.start,
      keyboardType: TextInputType.name,

      decoration: InputDecoration(
        suffixIcon: actionWidget ?? null,
        labelText: hint,
        alignLabelWithHint: true,
        //hintText: hint,
        hintStyle: TextStyle(color: Color(0X99000000)),
        border: OutlineInputBorder(
          //gapPadding: 30,
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
        //errorText: errortext,
      ),

      textInputAction: TextInputAction.next,
//      onSaved: emailvalue=>context.watch<Emailcheck>().get
//              focusNode: _tokenFocusNode,
      //onChanged: emailvalue,
    );


  }
}
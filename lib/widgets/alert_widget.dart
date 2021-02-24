import 'package:flutter/material.dart';
class Alert_widget extends StatelessWidget {
  final Widget body_widget;
  final Function on_accept;
  final String on_accept_text;
  final Function on_deny;
  final String on_deny_text;


  const Alert_widget({Key key, this.body_widget, this.on_accept, this.on_accept_text, this.on_deny, this.on_deny_text, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child:Container(
          padding: EdgeInsets.fromLTRB(20,0,20,0),
          child: Card(child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  //width: double.infinity,
                    child:body_widget,
                ),
                Row(
                    mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FlatButton(
                          child: Text(on_accept_text,style: TextStyle(color: Color(0xFF6200EE),fontSize: 14),),
                          onPressed: on_accept),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FlatButton(
                          child: Text(on_deny_text,style: TextStyle(color: Color(0xFF6200EE),fontSize: 14),),
                          onPressed: on_deny),
                    ),
                  ],
                )
              ],
            ),
          )),
        )
    );
  }
}

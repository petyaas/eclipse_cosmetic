import 'package:flutter/material.dart';
class Alert_widget extends StatelessWidget {
  final String alert_text;
  final Function onaccept;
  final Function ondeny;

  const Alert_widget({Key key, this.alert_text, this.onaccept, this.ondeny}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child:Container(
          padding: EdgeInsets.all(10),
          child: Card(child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  width: double.infinity,
                    child: Text(alert_text,
                  style: TextStyle(fontFamily: 'Roboto',fontSize: 14),textAlign: TextAlign.left,)
                ),
                Row(
                    mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FlatButton(
                          child: Text('da'),
                          onPressed: onaccept),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FlatButton(
                          child: Text('ne'),
                          onPressed: ondeny),
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

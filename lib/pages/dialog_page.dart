import 'package:eclipse_cosmetic/widgets/alert_widget.dart';
import 'package:flutter/material.dart';

class Dialog_widget extends StatefulWidget {
  @override
  _Dialog_widgetState createState() => _Dialog_widgetState();
}

class _Dialog_widgetState extends State<Dialog_widget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          padding: EdgeInsets.all(8),
          children: <Widget>[
            RaisedButton(child: Text('Login'), onPressed: () {}),
            RaisedButton(
                child: Text('Диалоговое окно'),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => Alert_widget(
                      alert_text: 'lasj dklasj dalksjaksj dalkjd lakjd lakjdlakjsd lkajd lkajsd lkajsd aljd alksddkhasj',
                      onaccept: () {
                        Navigator.pop(context);
                      },
                      ondeny: () {
                        Navigator.pop(context);
                      },
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}

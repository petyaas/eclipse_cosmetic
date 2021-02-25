import 'package:eclipse_cosmetic/services/list_of_base_dan.dart';
import 'package:eclipse_cosmetic/widgets/alert_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:eclipse_cosmetic/widgets/alert_dialog_nd.dart';


class Dialog_widget extends StatefulWidget {
  @override
  _Dialog_widgetState createState() => _Dialog_widgetState();
}

class _Dialog_widgetState extends State<Dialog_widget> {
  List<List_of_plan_base> listalert = [];
  List<String> itemtext = ['aaaaaaa', 'bbbbbbb', 'cccccccc'];
  List<String> itemtextmini = ['a', 'b', 'c'];
  List<bool> itembool = [false, true, true];
  @override
  Widget build(BuildContext context) {
    List<List_of_plan_base> listofbase = [];
    return SafeArea(
      child: Scaffold(
        body: ListView(
          padding: EdgeInsets.all(8),
          children: <Widget>[
            RaisedButton(
                child: Text('Alert'),
                onPressed: () {
                  Alert_widget_nd().alert_dialog(
                    null,
                    'asdasdas',
                    'ok',
                    'no',
                    () {
                      Navigator.pop(context);
                    },
                    () {
                      Navigator.pop(context);
                    },
                  ).show(context);
                }),

            RaisedButton(
                child: Text('Listalert'),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return ListAlertDialog(
                        titlofalert: 'Список задании',
                        itemtext: itemtext,
                        itembool: itembool,
                        onacceptclick: (){},
                        ondenyclick: (){},
                      );
                    },
                  );
                }
                ),
          ],
        ),
      ),
    );
  }
}


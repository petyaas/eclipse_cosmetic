import 'package:eclipse_cosmetic/services/list_of_base_dan.dart';
import 'package:eclipse_cosmetic/widgets/alert_list_widget.dart';
import 'package:eclipse_cosmetic/widgets/alert_widget.dart';
import 'package:flutter/material.dart';

class Dialog_widget extends StatefulWidget {
  @override
  _Dialog_widgetState createState() => _Dialog_widgetState();
}

class _Dialog_widgetState extends State<Dialog_widget> {

  @override
  Widget build(BuildContext context) {
    List<List_of_plan_base> listofbase=[];
    return SafeArea(
      child: Scaffold(
        body: ListView(
          padding: EdgeInsets.all(8),
          children: <Widget>[
            RaisedButton(
                child: Text('Login'), onPressed: () {
              showDialog(
                context: context,
                builder: (context) => Alert_widget(
                  on_accept_text: 'Потвердить',
                  on_deny_text: 'Отмена',
                  body_widget: Text(' asdh kasjdh asjdh ak'),
                  on_accept: () {
                    Navigator.pop(context);
                  },
                  on_deny: () {

                    Navigator.pop(context);
                  },
                ),
              );
            }),
            RaisedButton(
                child: Text('Диалоговое окно'),
                onPressed: () {
                  listofbase.add(List_of_plan_base(plancheck: false,plantext: 'asdasd'));
                  listofbase.add(List_of_plan_base(plancheck: false,plantext: 'asdasd'));
                  listofbase.add(List_of_plan_base(plancheck: false,plantext: 'asdasd'));
                  listofbase.add(List_of_plan_base(plancheck: false,plantext: 'asdasd'));
                  listofbase.add(List_of_plan_base(plancheck: false,plantext: 'asdasd'));
                  listofbase.add(List_of_plan_base(plancheck: false,plantext: 'asdasd'));
                  listofbase.add(List_of_plan_base(plancheck: false,plantext: 'asdasd'));
                  listofbase.add(List_of_plan_base(plancheck: false,plantext: 'asdasd'));
                  listofbase.add(List_of_plan_base(plancheck: false,plantext: 'asdasd'));
                  listofbase.add(List_of_plan_base(plancheck: false,plantext: 'asdasd'));
                  listofbase.add(List_of_plan_base(plancheck: false,plantext: 'asdasd'));
                  listofbase.add(List_of_plan_base(plancheck: false,plantext: 'asdasd'));
                  listofbase.add(List_of_plan_base(plancheck: false,plantext: 'asdasd'));
                  listofbase.add(List_of_plan_base(plancheck: false,plantext: 'asdasd'));
                  listofbase.add(List_of_plan_base(plancheck: false,plantext: 'asdasd'));
                  listofbase.add(List_of_plan_base(plancheck: false,plantext: 'asdasd'));

                  showDialog(
                    context: context,
                    builder: (context) =>Alert_list_widget(
                      list: listofbase,
                      on_accept: (){
                        Navigator.pop(context);
                      },
                      on_accept_text: 'ok',
                      on_deny: (){
                        Navigator.pop(context);
                      },
                      on_deny_text: 'no',
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}

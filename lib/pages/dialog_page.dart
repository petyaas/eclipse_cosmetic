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

                  showDialog(
                    context: context,
                    builder: (context) =>
                        Alert_list_widget(
                      listwidget:  ListView.builder(
                          itemCount: listofbase.length,
                          itemBuilder: (BuildContext context, int index) {
                            return ListTile(
                              leading: Checkbox(
                                value: listofbase[index].plancheck,
                                onChanged: (value){
                                  listofbase[index].plancheck=value;
                                  setState(() {
                                  });
                                },
                              ),
                              title: Container(
                                child: Text(listofbase[index].plantext),
                              ),
                            );
                          }
                          ),
                      on_accept: (){
                        Navigator.pop(context);
                      },
                      on_accept_text: 'ok',
                      on_deny: (){
                        listofbase.add(List_of_plan_base(plancheck: false,plantext: 'asdasd'));
                        setState(() {

                        });


//                       Navigator.pop(context);
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

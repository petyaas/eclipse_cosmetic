import 'package:flutter/material.dart';


class ListAlertDialog extends StatelessWidget {
  const ListAlertDialog({
    Key key,
    @required this.itemtext,
    @required this.itembool,
    @required this.onacceptclick,
    @required this.ondenyclick,
    @required this.titlofalert,
  }) : super(key: key);
  final String titlofalert;
  final List<String> itemtext;
  final List<bool> itembool;
  final Function onacceptclick;
  final Function ondenyclick;

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (context, setState) {
        return AlertDialog(
          title: Text(titlofalert),
          content:
          Container(
            height: 800,
            width: 400,
            child: ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: itemtext.length,
                itemBuilder: (_, int index) {
                  return ListTile(
                    leading: Checkbox(
                        value: itembool[index],
                        onChanged:
                            (value) {
                          setState(() {
                            itembool[index] = value;
                          });
                        }
                        ),
                    title: Text(itemtext[index]),
                  );
                }),
          ),
          actions: <Widget>[
            FlatButton(
              onPressed: onacceptclick,
              child: Text("Отменить"),
            ),
            FlatButton(
              onPressed:ondenyclick,
              child: Text("Сохранить"),
            ),
          ],
        );
      },
    );
  }
}
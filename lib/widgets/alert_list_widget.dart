import 'package:flutter/material.dart';


class Alert_list_widget extends StatefulWidget {
  final Widget listwidget;
  final Function on_accept;
  final String on_accept_text;
  final Function on_deny;
  final String on_deny_text;

  Alert_list_widget({
    Key key,
    this.listwidget,
    this.on_accept,
    this.on_accept_text,
    this.on_deny,
    this.on_deny_text,
  }) : super(key: key);

  @override
  _Alert_list_widgetState createState() => _Alert_list_widgetState();
}

class _Alert_list_widgetState extends State<Alert_list_widget> {


  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Card(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height - 200,
               child: widget.listwidget,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FlatButton(
                      child: Text(
                        widget.on_accept_text,
                        style:
                            TextStyle(color: Color(0xFF6200EE), fontSize: 14),
                      ),
                      onPressed: widget.on_accept),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FlatButton(
                      child: Text(
                        widget.on_deny_text,
                        style:
                            TextStyle(color: Color(0xFF6200EE), fontSize: 14),
                      ),
                      onPressed: widget.on_deny),
                ),
              ],
            )
          ],
        ),
      )),
    ));
  }
}

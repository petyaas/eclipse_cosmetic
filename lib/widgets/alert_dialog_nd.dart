import 'package:flutter/material.dart';
import 'package:ndialog/ndialog.dart';

class Alert_widget_nd {
  DialogBackground alert_dialog(
      Widget titlewidget,
      String cintenttext,
      String action1_text,
      String action2_text,
      Function action1,
      Function action2) {
    return DialogBackground(
      barrierColor: Colors.black.withOpacity(.5),
      blur: 0,
      dialog: AlertDialog(
        title: titlewidget,
        content: Text(cintenttext),
        actions: <Widget>[
          FlatButton(
            child: Text(action1_text),
            onPressed: action1,
          ),
          FlatButton(
            child: Text(action2_text),
            onPressed: action2,
          )
        ],
      ),
    );
  }

  DialogBackground alert_list_dialog(
      BuildContext context,
      Widget titlewidget,
      Widget cintentlist,
      String action1_text,
      String action2_text,
      Function action1,
      Function action2) {
    return DialogBackground(
      barrierColor: Colors.black.withOpacity(.5),
      blur: 0,
      dialog: AlertDialog(
        title: titlewidget,
        content: Container(
          height:MediaQuery.of(context).size.height-200,
          width: MediaQuery.of(context).size.width-50,
          child: cintentlist,
        ),
        actions: <Widget>[
          FlatButton(
            child: Text(action1_text),
            onPressed: action1,
          ),
          FlatButton(
            child: Text(action2_text),
            onPressed: action2,
          )
        ],
      ),
    );
  }
}

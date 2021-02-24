import 'package:flutter/material.dart';
class Alert_dialog extends StatelessWidget {
  final Function onaccept;
  final Function ondeny;
  final BuildContext context;

  const Alert_dialog({Key key, this.onaccept, this.ondeny, this.context}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return showAlertDialog(context);
  }

  showAlertDialog(BuildContext context) {
    // set up the buttons
    Widget cancelButton = FlatButton(
      child: Text("Cancel"),
      onPressed:  ondeny,
    );
    Widget continueButton = FlatButton(
      child: Text("Continue"),
      onPressed:  onaccept,
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("AlertDialog"),
      content: Text("Would you like to continue learning how to use Flutter alerts?"),
      actions: [
        cancelButton,
        continueButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }


}


import 'package:eclipse_cosmetic/widgets/drop_down_widget.dart';
import 'package:flutter/material.dart';

class Drop_daon_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Center(
            child:Drop_down_widget(
              hint: 'Исполнитель',
              items: ["jhasjkdas","ashdjkashj","asjhdash"],
              onchangeitem: (String chengeditem){
                print(chengeditem);
              },
            ),
          ),
        ));
  }
}

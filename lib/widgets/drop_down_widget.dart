
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';


class Drop_down_widget extends StatelessWidget {
  final String hint;
  final List<String> items;
  final Function onchangeitem;
  const Drop_down_widget({Key key, this.hint, this.items, this.onchangeitem}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DropdownSearch<String>(
        mode: Mode.MENU,
        //showSelectedItem: true,
        items: items,
        label: hint,
        hint: hint,
//        popupItemDisabled: (String s) => s.startsWith('I'),
        onChanged: onchangeitem,
        //selectedItem: "Brazil"
        );
  }
}
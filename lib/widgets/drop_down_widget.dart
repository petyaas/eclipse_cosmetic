import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
class DropDownWidget extends StatelessWidget {
  final String hint;
  final List<String> items;
  final Function onChangeitem;
  const DropDownWidget({Key key, this.hint, this.items, this.onChangeitem}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DropdownSearch<String>(
        mode: Mode.MENU,
        //showSelectedItem: true,
        items: items,
        label: hint,
        hint: hint,
//        popupItemDisabled: (String s) => s.startsWith('I'),
        onChanged: onChangeitem,
        //selectedItem: "Brazil"
        );
  }
}
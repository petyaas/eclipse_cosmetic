// import 'package:eclipse_cosmetic/services/list_of_base_dan.dart';
// import 'package:flutter/material.dart';
// class List_of_plan extends StatelessWidget {
//  List<List_of_plan_base> dan;
//    List_of_plan({Key key, this.dan,}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: MediaQuery.of(context).size.height-200,
//       child: ListView.builder(
//           padding: const EdgeInsets.all(8),
//           itemCount: 10,
//           itemBuilder: (BuildContext context, int index) {
//             return ListTile(
//               leading: Checkbox(value: dan[index].plancheck,
//               onChanged: (value){
//                 if(dan[index].plancheck){dan[index].plancheck=false;}
//                       else{dan[index].plancheck=true;}
//               },),
//               title: Container(child: Text(dan[index].plantext),),
//
//             );
//           }
//       ),
//     );
//   }
// }

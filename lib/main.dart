import 'package:eclipse_cosmetic/pages/dialog_page.dart';
import 'package:eclipse_cosmetic/pages/drop_down.dart';
import './pages/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cosmeticwidgets'),
      ),
        body: ListView (
          padding: EdgeInsets.all(8),
            children: <Widget>[
              RaisedButton(
                  child: Text('Login'),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                  }
              ),
              RaisedButton(
                  child: Text('Диалоговое окно'),
                  onPressed: (){
                    Navigator.push(
                      context,
                     MaterialPageRoute(builder: (context) => Dialog_widget()),
                    );
                  }
              ),
              RaisedButton(
                  child: Text('Диалоговое окно'),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Drop_daon_page()),
                    );
                  }
              ),

            ],
        ),
    );
  }
}



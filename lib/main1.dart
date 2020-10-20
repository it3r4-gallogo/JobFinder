import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: "",
        home: new Scaffold(
          appBar: new AppBar(
            title: new Text("JobFinder"),
          ),
          body: new ListView(
            children: <Widget>[
              new Image.asset('image/logo3.jpg'),
              new Text("Categories",
                  style:
                      new TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
              new Center(
                //padding: EdgeInsets.only(top: 50),
                child: RaisedButton(
                  child: Text(
                    'PART TIME',
                    style: TextStyle(fontSize: 30),
                  ),
                  onPressed: () {},
                  color: Colors.pink[80],
                  shape: RoundedRectangleBorder(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

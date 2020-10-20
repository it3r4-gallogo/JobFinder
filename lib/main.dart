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
              Center(
                  //margin: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: Column(children: <Widget>[
                Text(
                  "Student Profile",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                new Image.asset('image/33.jpg'),
                TextFormField(
                  decoration: const InputDecoration(
                    icon: const Icon(Icons.person),
                    hintText: 'Enter your first and last name',
                    labelText: 'Name',
                  ),
                ),
                Text(
                  "Name",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                Text(
                  "Skills",
                  style: TextStyle(fontSize: 18),
                ),
                RaisedButton(
                  //padding: EdgeInsets.only(top: 20.0),
                  child: Text(
                    'See More Information',
                    style: TextStyle(fontSize: 25),
                  ),
                  onPressed: () {},
                  color: Colors.pink[100],
                  shape: RoundedRectangleBorder(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                ),
              ])),
            ],
          ),
        ));
  }
}

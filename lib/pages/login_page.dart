import 'package:flutter/material.dart';
import 'package:flutter_sample/pages/home_page.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("JobFinder"),
      ),
      body: new ListView(
        children: <Widget>[
          Center(
            child: Container(
              margin: const EdgeInsets.fromLTRB(10, 30, 10, 30),
              color: Colors.pink[50],
              width: 300.0,
              height: 550.0,
              padding: EdgeInsets.fromLTRB(30, 60, 30, 30),
              alignment: Alignment.center,
              child: Column(children: <Widget>[
                Image.asset('image/iconlogo.png', width: 180, height: 180),
                new Text(
                  'Login Type',
                  style: new TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                    fontFamily: 'Roboto',
                  ),
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    new RaisedButton(
                      padding: const EdgeInsets.all(12.0),
                      textColor: Colors.white,
                      color: Colors.blue,
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => EmployeerLogin(data: ''),
                          ),
                        );
                      },
                      child: new Text(
                        "Employer",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    new RaisedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => EmployeerLogin(data: ''),
                          ),
                        );
                      },
                      textColor: Colors.white,
                      color: Colors.red,
                      padding: const EdgeInsets.all(12.0),
                      child: new Text(
                        "Finder",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                  ],
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}

class EmployeerLogin extends StatelessWidget {
  // This is a String for the sake of an example.
  // You can use any type you want.
  final String data;

  EmployeerLogin({
    Key key,
    @required this.data,
  }) : super(key: key);

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
                child: Container(
                  margin: const EdgeInsets.fromLTRB(10, 30, 10, 30),
                  color: Colors.pink[50],
                  width: 300.0,
                  height: 550.0,
                  padding: EdgeInsets.fromLTRB(30, 60, 30, 30),
                  //padding: EdgeInsets.all(30.0),
                  alignment: Alignment.center,
                  child: Column(children: <Widget>[
                    Text(
                      "Login as Employeer",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        icon: const Icon(Icons.business),
                        hintText: 'Company Name',
                      ),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        icon: const Icon(Icons.person),
                        hintText: 'Username',
                      ),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        icon: const Icon(Icons.remove_red_eye),
                        hintText: 'Password',
                      ),
                    ),
                    RaisedButton(
                      child: Text(
                        'Login',
                        style: TextStyle(fontSize: 25),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ),
                        );
                      },
                      color: Colors.pink[100],
                      shape: RoundedRectangleBorder(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                      ),
                    ),
                    FlatButton(
                      onPressed: () {
                        /*...*/
                      },
                      child: Text(
                        "Not Yet Registered? SIGN UP",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    )
                  ]),
                ),
              ),
            ],
          ),
        ));
  }
}

class EmployeeLogin extends StatelessWidget {
  // This is a String for the sake of an example.
  // You can use any type you want.
  final String data;

  EmployeeLogin({
    Key key,
    @required this.data,
  }) : super(key: key);

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
                child: Container(
                  margin: const EdgeInsets.fromLTRB(10, 30, 10, 30),
                  color: Colors.pink[50],
                  width: 300.0,
                  height: 550.0,
                  padding: EdgeInsets.fromLTRB(30, 60, 30, 30),
                  //padding: EdgeInsets.all(30.0),
                  alignment: Alignment.center,
                  child: Column(children: <Widget>[
                    Text(
                      "Login as Job Finder",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        icon: const Icon(Icons.person),
                        hintText: 'Username',
                      ),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        icon: const Icon(Icons.remove_red_eye),
                        hintText: 'Password',
                      ),
                    ),
                    RaisedButton(
                      child: Text(
                        'Login',
                        style: TextStyle(fontSize: 25),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ),
                        );
                      },
                      color: Colors.pink[100],
                      shape: RoundedRectangleBorder(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                      ),
                    ),
                    FlatButton(
                      onPressed: () {
                        /*...*/
                      },
                      child: Text(
                        "Not Yet Registered? SIGN UP",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    )
                  ]),
                ),
              ),
            ],
          ),
        ));
  }
}

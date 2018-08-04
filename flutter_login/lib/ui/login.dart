import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new Loginstate();
  }
}

class Loginstate extends State<Login> {
  final TextEditingController _usercontroler = new TextEditingController();
  final TextEditingController _password = new TextEditingController();
  String welcometext = "";

  void _erase() {
    setState(() {
      _usercontroler.clear();
      _password.clear();
    });
  }

  void _showwelcome() {
    setState(() {
      if (_usercontroler.text.isNotEmpty && _password.text.isNotEmpty) {
        welcometext = _usercontroler.text;
      }else{
        welcometext="Nothing";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          "Login Page",
        ),
      ),
      backgroundColor: Colors.blueGrey,
      body: new Container(
        alignment: Alignment.topCenter,
        child: new ListView(
          children: <Widget>[
            new Padding(padding: const EdgeInsets.all(10.0)),
            new Image.asset(
              "images/face.png",
              width: 90.0,
              height: 90.0,
              color: Colors.amberAccent,
            ),
            new Padding(padding: const EdgeInsets.all(14.0)),
            new Container(
              height: 180.0,
              width: 380.0,
              color: Colors.white,
              margin: const EdgeInsets.only(left: 10.0,right: 10.0),

              child: new Column(
                children: <Widget>[
                  new TextField(
                    controller: _usercontroler,
                    decoration: InputDecoration(
                        hintText: "User Name", icon: new Icon(Icons.person)),
                  ),
                  new TextField(
                    controller: _password,
                    decoration: InputDecoration(
                        hintText: "Password", icon: new Icon(Icons.lock)),
                    obscureText: true,
                  ),
                  new Padding(padding: new EdgeInsets.all(13.0)),
                  new Center(
                    child: new Row(
                      children: <Widget>[
                        new Container(
                            margin: const EdgeInsets.only(left: 38.0),
                            child: new RaisedButton(
                                color: Colors.blue,
                                onPressed: _showwelcome,
                                child: new Text(
                                  "Login",
                                  style: new TextStyle(
                                    color: Colors.white,
                                  ),
                                ))),
                        new Container(
                            margin: const EdgeInsets.only(left: 105.0),
                            child: new RaisedButton(
                                color: Colors.blue,
                                onPressed: _erase,
                                child: new Text(
                                  "Clear",
                                  style: new TextStyle(
                                    color: Colors.white,
                                  ),
                                )))
                      ],
                    ),
                  )
                ],
              ),
            ),
            new Padding(padding: const EdgeInsets.all(14.0)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text(
                  "welcome $welcometext",
                  style: new TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

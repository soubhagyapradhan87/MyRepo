import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blue,
        title: new Text("App Bar"),
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.search),
              onPressed: () => debugPrint("search tapped")),
          new IconButton(icon: new Icon(Icons.send), onPressed: _onPress)
        ],
      ),
      backgroundColor: Colors.grey.shade100,
      body: new Container(
        alignment: Alignment.center,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              "Flutter",
              style: new TextStyle(
                  fontSize: 30.5,
                  fontStyle: FontStyle.italic,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold),
            ),
            new InkWell(
              child: new Text("Button"),
              onTap: () => debugPrint("button tapped"),
            ),

          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: () => debugPrint("tapped add"),
        backgroundColor: Colors.blue,
        child: new Icon(Icons.add),
      ),
      bottomNavigationBar: new BottomNavigationBar(
        items: [
          new BottomNavigationBarItem(
              icon: new Icon(Icons.message), title: new Text("chat")),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.home), title: new Text("Home")),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.account_circle), title: new Text("contact"))
        ],
        onTap: (int i) => debugPrint("hey u tapped $i"),
      ),
    );
  }

  void _onPress() {
    print("send tapped");
  }
}


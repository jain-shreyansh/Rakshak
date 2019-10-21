import 'package:flutter/material.dart';

class Page extends StatelessWidget {
  final String title;

  Page(this.title);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
        backgroundColor: Colors.redAccent,
      ),
      body: new Center(
        child: new Text(title),
      ),
    );
  }
}

class SettingsPage extends StatelessWidget {
  final String title;

  SettingsPage(this.title);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
        backgroundColor: Colors.redAccent,
      ),
      body: new Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 10),
          ),

          //  Text(title),
          Padding(
              padding: EdgeInsets.only(top: 10, left: 10),
              child: Text(
                "Your SOS contacts:",
                style: TextStyle(fontSize: 30),
              )),
          Padding(
              padding: EdgeInsets.only(top: 10, left: 10),
              child: Text("Navyaa Sharma", style: TextStyle(fontSize: 25))),
               Padding(
              padding: EdgeInsets.only(top: 10, left: 10),
              child: Text("+91-9315673060", style: TextStyle(fontSize: 15)))
              ,
              
               Padding(
              padding: EdgeInsets.only(top: 100, left: 300),
              child:FloatingActionButton(onPressed: ()=> {},
              child: Text("+"),
              ))
        ],
      ),
    );
  }
}


class Reminder extends StatelessWidget {
  final String title;

  Reminder(this.title);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
        backgroundColor: Colors.redAccent,
      ),
      body: new Center(
        child: new Text(title),
      ),
    );
  }
}




class PageA extends StatelessWidget {
  final String title;

  PageA(this.title);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
        backgroundColor: Colors.redAccent,
      ),
      body: new Center(
        child: new Text(title),
      ),
    );
  }
}



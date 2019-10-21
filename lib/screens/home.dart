import 'package:flutter/material.dart';
import 'package:rakshak/screens/page.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        actions: <Widget>[
          // Icon(Icons.comment),
          // Icon(Icons.settings),
        ],
        backgroundColor: Colors.deepOrangeAccent,
        elevation: 50.0,
        leading: Icon(Icons.menu),
       
        // bottom: PreferredSize(child: Icon(Icons.linear_scale,size: 60.0,), preferredSize: Size.fromHeight(50.0)),
      ),
     drawer: new Drawer(
            child: new ListView(
              children: <Widget>[
                new UserAccountsDrawerHeader(
                  accountEmail: new Text("userEmail"),
                  accountName: new Text("userName"),
                  currentAccountPicture: new GestureDetector(
                    child: new CircleAvatar(
                      // backgroundImage: new NetworkImage(currentProfilePic),
                    ),
                    onTap: () => print("This is your current account."),
                  ),
                  // otherAccountsPictures: <Widget>[
                  //   new GestureDetector(
                  //     child: new CircleAvatar(
                  //       backgroundImage: new NetworkImage(otherProfilePic),
                  //     ),
                  //     onTap: () => switchAccounts(),
                  //   ),
                  // ],
                  decoration: new BoxDecoration(
                      image: new DecorationImage(
                          image: new NetworkImage(
                              "https://img00.deviantart.net/35f0/i/2015/018/2/6/low_poly_landscape__the_river_cut_by_bv_designs-d8eib00.jpg"),
                          fit: BoxFit.fill)),
                ),
                new ListTile(
                    title: new Text("Documents"),
                    trailing: new Icon(Icons.arrow_upward),
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).push(new MaterialPageRoute(
                          builder: (BuildContext context) =>
                              new PageA("Documents")));
                    }),
                new ListTile(
                    title: new Text("Reminders"),
                    trailing: new Icon(Icons.arrow_right),
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).push(new MaterialPageRoute(
                          builder: (BuildContext context) =>
                              new Page("Reminders")));
                    }),
 new ListTile(
                    title: new Text("SOS"),
                    trailing: new Icon(Icons.arrow_right),
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).push(new MaterialPageRoute(
                          builder: (BuildContext context) =>
                              new Page("SOS")));
                    }),
    new ListTile(
                    title: new Text("Settings"),
                    trailing: new Icon(Icons.arrow_upward),
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).push(new MaterialPageRoute(
                          builder: (BuildContext context) =>
                              new SettingsPage("Settings")));
                    }),
                new Divider(),
                new RaisedButton(
                  onPressed: () => {
                    // GoogleSignIn().signOut(),
                    // FirebaseAuth.instance.signOut(),
                    // Navigator.of(context).pushAndRemoveUntil(
                    //   MaterialPageRoute(builder: (context) => MyApp()),
                    //   (route) => false,
                    // )
                  },
                  child: Text('Log out'),
                ),
                new ListTile(
                  title: new Text("Cancel"),
                  trailing: new Icon(Icons.cancel),
                  onTap: () => Navigator.pop(context),
                ),
              ],
            ),
          ),
      body: 
      Column(children: <Widget>[

    
      Container(
        height: 400.0,
        width:400.0,
        // size.height * 0.1,
        decoration: new BoxDecoration(
          shape: BoxShape.rectangle,
          image: DecorationImage(
              image: new AssetImage("assets/images/gps.png"),
              fit: BoxFit.cover,
              // colorFilter: ColorFilter.mode(Colors.white, BlendMode.overlay)),
        ),
      ),
      
      // Container(
        
      //   child: Image.asset("assets/images/gps.png"),
      //   ),
    ),
Text("  "),
    Row(children: <Widget>[
      Text("     "),
      Icon(Icons.supervised_user_circle,size: 25.0,),
      Text(" Safety Score : 92%",style: TextStyle (fontSize: 25.0),)
    ],)
    ],
    ));
    // Container(
    //   child: Text("HELLO"),
    
  }
}
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: HomePage(),
    );
  }
}
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
        elevation: defaultTargetPlatform == TargetPlatform.android?5.0:0.0,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Ranshikha Gupta"),
              accountEmail: Text("ranshikha404@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.cyanAccent,
                child: Text("R"),
              ),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.cyanAccent,
                  child: Text("G"),
                )

              ],

            ),

            ListTile(
              title: Text("Page specification"),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text("Page notification"),
              trailing: Icon(Icons.arrow_forward),
            ),
            Divider(),
            ListTile(
              title: Text("Page feedback "),
              trailing: Icon(Icons.arrow_downward),

            ),
          ],
        )
      ),
      body: Container(
        child: Center(
          child: Text("My home"),
        ),
      ),
    );
  }
}

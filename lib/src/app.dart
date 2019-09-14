import 'package:flutter/material.dart';

class App extends StatefulWidget {
  createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  Widget build(context) {
    String mis='Misdirection';
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter  Library'),

        ),

      drawer: Drawer(

        child: ListView(
          padding: EdgeInsets.zero,

          children: <Widget>[
            Container(
               height: 100.0,
                child:DrawerHeader(
              decoration: BoxDecoration(
                  color: Colors.lightBlue

              ),

              child: Text('Menu'),
            ),),
            ListTile(
              title: Text('option1'),
              onTap:(){
                Navigator.pop(context);
            },
            )
            ],
        ),
      ),
      ),

    );
  }
}

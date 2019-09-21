import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class App extends StatefulWidget {
  createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Widgets'),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Container(
                height: 100.0,
                child: DrawerHeader(
                  decoration: BoxDecoration(color: Colors.lightBlue),
                  child: Text('Menu'),
                ),
              ),
              ListTile(
                title: Text('MCU'),
                onTap: () {
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
        body: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Card(
                  child: Image.asset(
                    'assets/thanos_marvel_feature.jpg',
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Align(
                  alignment: Alignment.bottomLeft,
                  child: MaterialButton(
                    child: Icon(
                      Icons.phone,
                      color: Colors.blue,
                      size: 45.00,
                    ),
                    onPressed: () {
                      print("contact at 945756244");
                    },
                  ),
                ),
                Center(
                  child: Container(
                    padding: EdgeInsets.only(
                        left: 50.0, right: 50.0, top: 16.0, bottom: 16.0),
                    child: FloatingActionButton(
                        onPressed: () {
                          print("snapped");
                        },
                        child: Text('Snap!!!')),
                  ),
                ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child:Center(
                          child: FlutterLogo(
                            size: 45.00,
                            textColor: Colors.blue,
                          ),
                        ),

                    )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

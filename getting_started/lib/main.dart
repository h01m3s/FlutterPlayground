import 'package:flutter/material.dart';

void main() => runApp(new GettingStartedApp());

class GettingStartedApp extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return new MaterialApp(
        title: "Getting Started Title",
        home: new Scaffold(
          appBar: new AppBar(
            title: new Text("App Bar Title"),
          ),
          body: new HomeWidget(),
        )
      );
    }
}

class HomeWidget extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return new ListView.builder(
        itemCount: 20,
        itemBuilder: (context, rowNumber) {
          return new Container (
            padding: new EdgeInsets.all(16.0),
            child: new Column(
              children: <Widget>[
                new Image.network("https://mycodetips.com/wp-content/uploads/2017/11/Swift-Programming-Tutorials.png"),
                new Container(height: 8.0,),
                new Text("Is Swift better than Dart? Vote for your favorite programming language.", style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),),
                new Divider(color: Colors.green,)
              ],
            )
          );
        },
      );
    }
}
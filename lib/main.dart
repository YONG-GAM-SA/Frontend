import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            elevation: 5,
            title: Text("MapChat"),
          ),
          body: Center(
            child: Text("Hello world!"),
          )),
    );
  }
}

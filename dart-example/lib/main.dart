import 'package:flutter/material.dart';

import 'tabs.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.dark,
          toggleableActiveColor:Colors.pinkAccent,
          accentColor: Color.fromARGB(0xff, 0xfb, 0x72, 0x99)
      ),
      home: Tabs(),
    );
  }
}

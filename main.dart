import 'package:flutter/material.dart';
import 'package:fluttermenu/menu.dart';

void main () {
  runApp(menuFlutter());
}

class menuFlutter extends StatelessWidget {
  const menuFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FlutterMenuState(),
    );
  }
}

class FlutterMenuState extends StatefulWidget {
  const FlutterMenuState({super.key});

  @override
  State<FlutterMenuState> createState() => _FlutterMenuStateState();
}

class _FlutterMenuStateState extends State<FlutterMenuState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Menu(),
      appBar: AppBar(title: Text("Olá")),
      body: Text("Olá mundo!"),
    );
  }
}
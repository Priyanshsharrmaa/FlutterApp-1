import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  final int days = 30;
  final String name = "Priyansh";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter 1"),
      ),
      body: Container(
        child: Text("Welcome to $days of Flutter by $name"),
      ),
      drawer: Drawer(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shopperfun/services/database_services.dart';


class Intro extends StatefulWidget {
  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    DatabaseServices().updateCateory("Category 2");
    return Scaffold(
      appBar: AppBar(
        title: Text("Shopper Fun"),
        backgroundColor: Color.fromRGBO(102, 137, 161, 1),
        ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
           Text("Intro Page"),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tab3Ex extends StatefulWidget {

  @override
  _Tab3ExState createState() => _Tab3ExState();
}

class _Tab3ExState extends State<Tab3Ex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("Tab3",style: TextStyle(fontSize: 30,color: Colors.pink,fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }
}

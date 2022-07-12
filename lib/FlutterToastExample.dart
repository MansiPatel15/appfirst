import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FlutterToastExample extends StatefulWidget {

  @override
  _FlutterToastExampleState createState() => _FlutterToastExampleState();
}

class _FlutterToastExampleState extends State<FlutterToastExample> {

  void showToast() {
    Fluttertoast.showToast(
        msg: "This is Center Short Toast",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Toast"),
      ),
        body: Padding(
          padding: EdgeInsets.all(15.0),
          child: Center(
            child: RaisedButton(
              child: Text('click to show'),
              onPressed:()
              {
                showToast();
              },
            ),
          ),
        )
    );
  }
}

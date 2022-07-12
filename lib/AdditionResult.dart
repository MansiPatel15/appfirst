import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdditionResult extends StatefulWidget {
    var result="";

    AdditionResult({this.result});

  @override
  _AdditionResultState createState() => _AdditionResultState();
}

class _AdditionResultState extends State<AdditionResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SecondScrrenResult"),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 10,top: 10),
            child: Column(
              children: [
                Text("Result = "+widget.result),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

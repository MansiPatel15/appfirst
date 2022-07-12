import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RadioResult extends StatefulWidget {

  var output="";
  RadioResult({this.output});

  @override
  _RadioResultState createState() => _RadioResultState();
}

class _RadioResultState extends State<RadioResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RadioExampleResult"),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child:Column(
            children: [
              Text("Result = "+widget.output),
            ],
          ),
        ),
      ),
    );
  }
}

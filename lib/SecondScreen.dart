import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {

  var personName="";
  var emailid="";
  var con="";

  SecondScreen({this.personName,this.emailid,this.con});

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SecondScreen"),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 10,top: 10),
            child: Column(
              children: [
                Text("Name : "+widget.personName),
                Text("Email : "+widget.emailid),
                Text("Contact : "+widget.con)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

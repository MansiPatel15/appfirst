import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DialNumber extends StatefulWidget {

  @override
  _DialNumberState createState() => _DialNumberState();
}

class _DialNumberState extends State<DialNumber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DialNumber.."),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 70.0,
                width: 90.0,
                child: Card(
                  child:Align(alignment: Alignment.center,
                  child: Text("1", style: TextStyle(fontSize: 30.0,wordSpacing:20.0)
                  ),
                  ),
                ),
              ),
              Container(
                height: 70.0,
                width: 90.0,
                child: Card(
                  child:Align(alignment: Alignment.center,
                    child: Text("2", style: TextStyle(fontSize: 30.0,wordSpacing:20.0)
                    ),
                  ),
                ),
              ),
              Container(
                height: 70.0,
                width: 90.0,
                child: Card(
                  child:Align(alignment: Alignment.center,
                  child: Text("3", style: TextStyle(fontSize: 30.0,wordSpacing:20.0)
                  ),
                  ),
                ),
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 70.0,
                width: 90.0,
                child: Card(
                  child:Align(alignment: Alignment.center,
                    child: Text("4", style: TextStyle(fontSize: 30.0,wordSpacing:20.0)
                    ),
                  ),
                ),
              ),
              Container(
                height: 70.0,
                width: 90.0,
                child: Card(
                  child:Align(alignment: Alignment.center,
                    child: Text("5", style: TextStyle(fontSize: 30.0,wordSpacing:20.0)
                    ),
                  ),
                ),
              ),
              Container(
                height: 70.0,
                width: 90.0,
                child: Card(
                  child:Align(alignment: Alignment.center,
                    child: Text("6", style: TextStyle(fontSize: 30.0,wordSpacing:20.0)
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 70.0,
                width: 90.0,
                child: Card(
                  child:Align(alignment: Alignment.center,
                    child: Text("7", style: TextStyle(fontSize: 30.0,wordSpacing:20.0)
                    ),
                  ),
                ),
              ),
              Container(
                height: 70.0,
                width: 90.0,
                child: Card(
                  child:Align(alignment: Alignment.center,
                    child: Text("8", style: TextStyle(fontSize: 30.0,wordSpacing:20.0)
                    ),
                  ),
                ),
              ),
              Container(
                height: 70.0,
                width: 90.0,
                child: Card(
                  child:Align(alignment: Alignment.center,
                    child: Text("9", style: TextStyle(fontSize: 30.0,wordSpacing:20.0)
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 70.0,
                width: 90.0,
                child: Card(
                  child:Align(alignment: Alignment.center,
                    child: Text("*", style: TextStyle(fontSize: 30.0,wordSpacing:20.0)
                    ),
                  ),
                ),
              ),
              Container(
                height: 70.0,
                width: 90.0,
                child: Card(
                  child:Align(alignment: Alignment.center,
                    child: Text("0", style: TextStyle(fontSize: 30.0,wordSpacing:20.0)
                    ),
                  ),
                ),
              ),
              Container(
                height: 70.0,
                width: 90.0,
                child: Card(
                  child:Align(alignment: Alignment.center,
                    child: Text("#", style: TextStyle(fontSize: 30.0,wordSpacing:20.0)
                    ),
                  ),
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}

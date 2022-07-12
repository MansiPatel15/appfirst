import 'package:flutter/material.dart';

class ButtonExample extends StatefulWidget {

  @override
  _ButtonExampleState createState() => _ButtonExampleState();
}

class _ButtonExampleState extends State<ButtonExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Button example"),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){},
        label: Text("Call Now!"),
        icon: Icon(Icons.call)
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      // floatingActionButton: FloatingActionButton(
      //   onPressed: (){
      //
      //   },
      //   child: Icon(Icons.mail),
      // ),
      body: Column(
        children: [
          FlatButton(
            onPressed: (){
              print("Flat Button Click");
            },
            color: Colors.blue,
            splashColor: Colors.red,
            textColor: Colors.white,
            child: Text("Submit"),
          ),
          RaisedButton(
            onPressed: (){
              print("RaisedButton Click");
            },
            color: Colors.blue,
            splashColor: Colors.red,
            textColor: Colors.white,
            child: Text("Submit"),
          ),
          OutlineButton(
            onPressed: (){},
            borderSide: BorderSide(
              width: 3.0,
              color: Colors.pink,
              style: BorderStyle.solid,
            ),
            splashColor: Colors.red,
            child: Text("Submit"),
          ),
          InkWell(
            onTap: (){},
            child: Text("Contact"),
          ),
          // GestureDetector(
          //   onTap: (){
          //     print("Container Click");
          //   },
          //   child: Container(
          //     width: 100.0,
          //     height: 100.0,
          //     color: Colors.blue,
          //   ),
          // ),
          GestureDetector(
            onTap: (){
              print("Icon gesturedetector");
            },
            child: Icon(Icons.call,color: Colors.red,size:100.0),
          ),
         // Icon(Icons.call,color: Colors.red,size:100.0),
          IconButton(onPressed: (){
            print("Icon Button");
          }, icon: Icon(Icons.call,color: Colors.red)),
        ],
      ),
    );
  }
}

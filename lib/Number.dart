import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Number extends StatefulWidget {

  @override
  _NumberState createState() => _NumberState();
}

class _NumberState extends State<Number> {
  TextEditingController _no1  = TextEditingController();
  TextEditingController _no2  = TextEditingController();
  String result = "0";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 10,top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                        Text("Total =${result}",style: TextStyle(fontSize: 30),),
                      SizedBox(
                          height: 10,
                        ),
                        Text("No1 :",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                        SizedBox(
                          height: 15,
                        ),
                        TextField(
                          controller: _no1,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(border: OutlineInputBorder()),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      Text("No2 :",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      SizedBox(
                          height: 15,
                        ),
                        TextField(
                              controller: _no2,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(border: OutlineInputBorder()),
                          ),
                  SizedBox(
                    height: 20,
                  ),
                  RaisedButton(
                      onPressed: (){
                        setState(() {
                          int sum = int.parse(_no1.text) + int.parse(_no2.text);
                          result = sum.toString();
                        });
                      },
                        color: Colors.blue,
                       splashColor: Colors.red,
                        textColor: Colors.white,
                        child: Text("Submit"),
                    ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Total = ${result}",style: TextStyle(fontSize: 30),),
                      ],
                    ),
            ),
          ),
          ),
    );
  }
}

import 'package:firstapp/AdditionResult.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Addition extends StatefulWidget {

  @override
  _AdditionState createState() => _AdditionState();
}

class _AdditionState extends State<Addition> {
    TextEditingController _no1 = TextEditingController();
    TextEditingController _no2 = TextEditingController();
    String result = "0";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AddMulDivSub"),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 10,top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                   Text("No1 : ",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
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
                   Text("No2 : ",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
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
                          var no1 =_no1.text.toString();
                          var no2 =_no2.text.toString();
                          int sum = int.parse(_no1.text) + int.parse(_no2.text);
                          result = sum.toString();

                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => AdditionResult(result: result))
                          );
                     },
                     color: Colors.blue,
                     textColor: Colors.white,
                     splashColor: Colors.red,
                     child: Text("+"),
                   ),

                   RaisedButton(
                     onPressed: (){
                       var no1 = _no1.text.toString();
                       var no2 =_no2.text.toString();
                       int minus = int.parse(_no1.text) - int.parse(_no2.text);
                       result = minus.toString();

                       Navigator.of(context).push(
                           MaterialPageRoute(builder: (context) => AdditionResult(result: result))
                       );
                     },
                     color: Colors.blue,
                     textColor: Colors.white,
                     splashColor: Colors.red,
                     child: Text("-"),
                   ),
                RaisedButton(
                  onPressed: (){
                    var no1 = _no1.text.toString();
                    var no2 =_no2.text.toString();
                    int mul = int.parse(_no1.text) * int.parse(_no2.text);
                    result = mul.toString();

                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => AdditionResult(result: result))
                    );
                  },
                  color: Colors.blue,
                  textColor: Colors.white,
                  splashColor: Colors.red,
                  child: Text("*"),
                ),
                RaisedButton(
                  onPressed: (){
                    var no1 = _no1.text.toString();
                    var no2 =_no2.text.toString();
                    double div = int.parse(_no1.text) / int.parse(_no2.text);
                    result = div.toString();

                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => AdditionResult(result: result))
                    );
                  },
                  color: Colors.blue,
                  textColor: Colors.white,
                  splashColor: Colors.red,
                  child: Text("/"),
                ),
                 ],
            ),
          ),
        ),
      ),
    ) ;
  }
}

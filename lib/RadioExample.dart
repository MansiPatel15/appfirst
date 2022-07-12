import 'package:firstapp/RadioResult.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RadioExample extends StatefulWidget {

  @override
  _RadioExampleState createState() => _RadioExampleState();
}

class _RadioExampleState extends State<RadioExample> {
   var operation ="A";
   TextEditingController _no1 = TextEditingController();
   TextEditingController _no2 = TextEditingController();
   var output="0";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RadioExample"),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 15,top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("No1 : ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: TextField(
                    controller: _no1,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(border: OutlineInputBorder()),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text("No2 : ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: TextField(
                    controller: _no2,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(border: OutlineInputBorder()),
                  ),
                ),
                Row(
                  children: [
                    Radio(
                      groupValue: operation,
                      value: "A",
                      onChanged: (val)
                      {
                        setState(() {
                          operation=val;
                        });
                      },
                    ),
                    Text("Addition"),
                  ],
                ),
                Row(
                  children: [
                    Radio(
                      groupValue: operation,
                      value: "S",
                      onChanged: (val)
                      {
                        setState(() {
                          operation=val;
                        });
                      },
                    ),
                    Text("Subtraction"),
                  ],
                ),
                Row(
                  children: [
                    Radio(
                      groupValue: operation,
                      value: "M",
                      onChanged: (val)
                      {
                        setState(() {
                          operation=val;
                        });
                      },
                    ),
                    Text("Multification"),
                  ],
                ),
                Row(
                  children: [
                    Radio(
                      groupValue: operation,
                      value: "D",
                      onChanged: (val)
                      {
                        setState(() {
                          operation=val;
                        });
                      },
                    ),
                    Text("Division"),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                RaisedButton(
                  onPressed: (){
                    var no1 =_no1.text.toString();
                    var no2 =_no2.text.toString();

                    int result =0;
                    if(operation=="A")
                      {
                        setState(() {
                          result = int.parse(_no1.text) + int.parse(_no2.text);
                          output = result.toString();
                        });
                      }
                    else if(operation=="S")
                      {
                        setState(() {
                          result = int.parse(_no1.text) - int.parse(_no2.text);
                          output = result.toString();
                        });
                      }
                    else if(operation=="M")
                    {
                      setState(() {
                        result = int.parse(_no1.text) * int.parse(_no2.text);
                        output = result.toString();
                      });
                    }
                    else
                    {
                      setState(() {
                        double result = int.parse(_no1.text.toString()) / int.parse(_no2.text.toString());
                        output = result.toString();
                      });
                    };

                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context)=> RadioResult(output: output,))
                    );
                  },
                  child: Text("Submit"),
                  color: Colors.blue,
                  textColor: Colors.white,
                  splashColor: Colors.red,
                ),
                Text("Result : "+output)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

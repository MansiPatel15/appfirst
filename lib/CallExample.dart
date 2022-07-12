import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CallExample extends StatefulWidget {

  @override
  _CallExampleState createState() => _CallExampleState();
}

class _CallExampleState extends State<CallExample> {

 TextEditingController _num = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CallExample"),
      ),
      body: SingleChildScrollView(
        child: Padding(
    padding: const EdgeInsets.all(15.0),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Number : ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: _num,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(border: OutlineInputBorder(),
                hintText: 'Enter a Number',
                isDense: true,
            ),
            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              onPressed: (){
                var num = _num.text.toString();
                launch("tel://"+num);
              },
              child: Text("Call"),
              color: Colors.blue,
              textColor: Colors.white,
            ),
          ],
        ),
      ),
      ),
    );
  }
}

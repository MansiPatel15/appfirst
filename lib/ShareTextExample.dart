import 'package:flutter/material.dart';

class ShareTextExample extends StatefulWidget {

  @override
  _ShareTextExampleState createState() => _ShareTextExampleState();
}

class _ShareTextExampleState extends State<ShareTextExample> {
  TextEditingController _text = TextEditingController();
  String displayName="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ShareTextExample"),
      ),
      body: SingleChildScrollView(
        child: Padding(
    padding: const EdgeInsets.all(15.0),
    child:Column(
      crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("ShareText",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: _text,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(border: OutlineInputBorder(),
                hintText: 'Enter a ShareText',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: (){
                setState(() {
                  displayName=_text.text;
                });
              },
              child: Text("ShareText"),
            ),
          ],
        ),
      ),
      ),
    );
  }
}

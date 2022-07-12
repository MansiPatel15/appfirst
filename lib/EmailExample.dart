import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class EmailExample extends StatefulWidget {

  @override
  _EmailExampleState createState() => _EmailExampleState();
}

class _EmailExampleState extends State<EmailExample> {
  TextEditingController _email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("EmailExample"),
      ),
      body: SingleChildScrollView(
        child: Padding(
    padding: const EdgeInsets.all(15.0),
    child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("EmailAddress :",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold), ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: _email,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(border: OutlineInputBorder(),
                hintText: 'Enter the EmilAddress'
              ),
            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
                  onPressed: (){
                    var email = _email.text.toString();
                    launch("mailto:"+email);
                  },
              child: Text("Email"),
              color: Colors.blue,
              textColor: Colors.white,
            )
          ],
        ),
      ),
      ),
    );
  }
}

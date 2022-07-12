import 'package:flutter/material.dart';

class TextFieldExample extends StatefulWidget {

  @override
  _TextFieldExampleState createState() => _TextFieldExampleState();
}

class _TextFieldExampleState extends State<TextFieldExample> {

  TextEditingController _name = TextEditingController();
  TextEditingController _mobile = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextField Example"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Name"),
              TextField(
                controller: _name,
                keyboardType: TextInputType.text,
              ),
              SizedBox(height: 15.0,),
              Text("Mobile Number"),
              TextField(
                controller: _mobile,
                keyboardType: TextInputType.phone,
              ),
              SizedBox(height: 15.0,),
              Text("Email"),
              TextField(
                controller: _email,
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 15.0,),
              Text("Password"),
              TextField(
                controller: _password,
                keyboardType: TextInputType.text,
                obscureText: true,
              ),
              SizedBox(height: 15.0,),
              RaisedButton(
                onPressed: (){
                  var name = _name.text.toString();
                  var mobile = _mobile.text.toString();
                  print("Name : "+name);
                  print("Mobile : "+mobile);
                },
                child: Text("Submit"),
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

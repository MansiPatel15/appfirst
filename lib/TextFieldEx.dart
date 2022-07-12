import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldEx extends StatefulWidget {

  @override
  _TextFieldExState createState() => _TextFieldExState();
}

class _TextFieldExState extends State<TextFieldEx> {

  TextEditingController _name  = TextEditingController();
  TextEditingController _address  = TextEditingController();
  TextEditingController _mobile  = TextEditingController();
  TextEditingController _email  = TextEditingController();
  TextEditingController _password  = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Field"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Name"),
              SizedBox(
                height: 15.0,
              ),
              TextField(
                controller: _name,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(border: OutlineInputBorder(),
                hintText: 'Enter a Name',
                  isDense: true,
                ),
              ),
              SizedBox(height: 20.0,),
              Text("Address"),
              SizedBox(
                height: 15.0,
              ),
              TextField(
                controller: _address,
                minLines: 2,
                maxLines: 5,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(hintText: 'Enter a Address',
                  hintStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(),
                  ),
                ),

              SizedBox(height: 20.0,),
              Text("MobileNumber"),
              SizedBox(
                height: 15.0,
              ),
              TextField(
                controller: _mobile,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(hintText: 'Enter a MobileNumber',border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0),
                ),
                ),
              ),
              SizedBox(height: 30.0,),
              Text("EmailId"),
              SizedBox(
                height: 15.0,
              ),
              TextField(
                controller: _email,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(prefixIcon: Icon(Icons.email_rounded, color: Colors.blue,),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                  ),
                ),
              SizedBox(height: 30.0,),
              Text("Password"),
              SizedBox(
                height: 15.0,
              ),
              TextField(
                controller: _password,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(border: OutlineInputBorder(),
                  hintText: 'Enter a Password',
                  isDense: true,
              ),
              ),
              SizedBox(height: 30.0,),
              RaisedButton(
                onPressed: (){
                  var name = _name.text.toString();
                  var address = _address.text.toString();
                  var mobile = _mobile.text.toString();
                  var email = _email.text.toString();
                  var password = _password.text.toString();
                  print("Name "+name);
                  print("Address "+address);
                  print("MobileNumber "+mobile);
                  print("EmailId "+email);
                  print("Password "+password);

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

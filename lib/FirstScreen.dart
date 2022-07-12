import 'package:firstapp/SecondScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
    TextEditingController _name= TextEditingController();
    TextEditingController _contact= TextEditingController();
    TextEditingController _email= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FirstScreen"),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 15,top: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Name : ",style: TextStyle(fontSize: 20),),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  controller: _name,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 20,
                ),
                Text("Contact : ",style: TextStyle(fontSize: 20),),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  controller: _contact,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 20,
                ),
                Text("Email : ",style: TextStyle(fontSize: 20),),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  controller: _email,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 20,
                ),
                RaisedButton(
                  onPressed: (){
                     var name = _name.text.toString();
                     var contact = _contact.text.toString();
                     var email = _email.text.toString();


                     Navigator.of(context).push(
                       MaterialPageRoute(builder: (context)=>SecondScreen(personName: name,emailid: email,con: contact,))
                     );
                  },
                  color: Colors.blue,
                  splashColor: Colors.red,
                  textColor: Colors.white,
                  child: Text("Submit"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

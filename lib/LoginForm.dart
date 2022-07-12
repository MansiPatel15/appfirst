import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  _createDialog()
  {
    AlertDialog alert = AlertDialog(
    //  title: Text("Warinig!"),
      content:Container(
        height: 150,
        width: 100,
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(icon: Icon(Icons.person),border: OutlineInputBorder(),
                hintText: 'Enter a UserName',
                isDense: true,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(icon: Icon(Icons.lock),border: OutlineInputBorder(),
                hintText: 'Enter a Password',
                isDense: true,
              ),
            ),
          ],
        ) ,
      ),
      contentPadding: EdgeInsets.all(15.0),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: MediaQuery.of(context).size.width/3,
              child:  ElevatedButton(onPressed: (){}, child: Text("Login")),),
            SizedBox(
              width: 5,
            ),
            Container(
              width: MediaQuery.of(context).size.width/3,
              child: ElevatedButton(onPressed: (){
                Navigator.of(context).pop();
              }, child: Text("Cancel")),
            ),
          ],
        ),
      ],
    );

    showDialog(context: context, builder: (context){
      return alert;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LoginForm"),
      ),
      body:  Center(
          child: Container(
            width: 100,
            child:  ElevatedButton(
              onPressed: (){
                _createDialog();
              },
              child: Text("Show"),
            ),
          )

        ),
    );
  }
}

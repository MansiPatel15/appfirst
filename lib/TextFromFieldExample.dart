import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFormFieldExample extends StatefulWidget {
  @override
  _TextFormFieldExampleState createState() => _TextFormFieldExampleState();
}

class _TextFormFieldExampleState extends State<TextFormFieldExample> {

  var formkey = GlobalKey<FormState>();
  TextEditingController _name = TextEditingController(); //private
  TextEditingController _contact = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Textformfield"),
      ),
      body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Form(
              key: formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                [Text("Name"),
                   SizedBox(
                    height: 15.0,
                  ),
                  TextFormField(
                    controller: _name,
                    keyboardType: TextInputType.text,
                    decoration:  InputDecoration(border: OutlineInputBorder(),
                      isDense: true,
                    ),
                    validator: (val)
                      {
                      if(val.length<=0)
                      {
                        return "Please Enter Name";
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 20.0
                  ),
                  Text("Contact"),
                  SizedBox(
                    height: 15.0,
                  ),
                  TextFormField(
                    controller: _contact,
                    keyboardType: TextInputType.phone,
                    decoration:  InputDecoration(border: OutlineInputBorder(),
                      isDense: true,
                    ),
                    validator: (val)
                    {
                      if(val.length<=0)
                      {
                        return "Please Enter Mobile Number";
                      }
                      else if(val.length!=10)
                      {
                        return "Please Enter Valid Mobile Number";
                      }
                      return null;
                    },
                  ),
                  RaisedButton(
                    onPressed: (){
                      if(formkey.currentState.validate())
                      {
                        var name = _name.text.toString();
                        var contact = _contact.text.toString();
                        print("Name : "+name);
                        print("Contact : "+contact);
                      }
                    },
                    color: Colors.blue,
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

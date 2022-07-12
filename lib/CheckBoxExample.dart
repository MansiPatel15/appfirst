import 'package:flutter/material.dart';

class CheckBoxExample extends StatefulWidget {

  @override
  _CheckBoxExampleState createState() => _CheckBoxExampleState();
}

class _CheckBoxExampleState extends State<CheckBoxExample> {

  bool ch1 =false;
  bool ch2 =true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CheckBoxExample"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Checkbox(
                value: ch1,
                activeColor: Colors.white,
                onChanged: (val)
                {
                  print(val);
                  setState(() {
                    ch1=val;
                  });
                },
              ),
              Checkbox(
                value: ch2,
                onChanged: (val)
                {
                  print(val);
                  setState(() {
                    ch2=val;
                  });
                },
              ),
              SizedBox(
                height: 20,
              ),
              RaisedButton(
                onPressed:(){
                  if(ch1==true)
                    {
                      print("CheckBox 1 is checked");
                    }
                  else
                    {
                      print("CheckBox 1 is unchecked");
                    }
                 // print("CheckBox 1 :"+ch1.toString());
                },
                child: Text("Submit"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


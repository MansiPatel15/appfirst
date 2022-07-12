import 'package:flutter/material.dart';

class DropDownExample extends StatefulWidget {

  @override
  _DropDownExampleState createState() => _DropDownExampleState();
}

class _DropDownExampleState extends State<DropDownExample> {
  var select ="i1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DropDownExample"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              DropdownButton(
                value: select,
                onChanged: (val)
                {
                  setState(() {
                    select=val;
                  });
                },
                items: [
                  DropdownMenuItem(
                    child: Text("Item 1"),
                    value: "i1",
                  ),
                  DropdownMenuItem(
                    child: Text("Item 2"),
                    value: "i2",
                  ),
                  DropdownMenuItem(
                    child: Text("Item 3"),
                    value: "i3",
                  ),
                  DropdownMenuItem(
                    child: Text("Item 4"),
                    value: "i4",
                  ),
                ],
              ),
              RaisedButton(
                    onPressed: (){
                        print("Selected value : "+select.toString());
                    },
                    child: Text("Submit"),
                    color: Colors.pink,
                    textColor: Colors.white,
                    splashColor: Colors.red,
                  ),
            ],
          ),
        ),
      ),
    );
  }
}

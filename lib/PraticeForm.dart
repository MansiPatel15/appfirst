import 'package:firstapp/PraticeFormResult.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PraticeForm extends StatefulWidget {

  @override
  _PraticeFormState createState() => _PraticeFormState();
}

class _PraticeFormState extends State<PraticeForm> {
  var gender ="F";
  var select ="Web Development";
  bool ch1 =false;
  var errmessage = "";

  TextEditingController _name = TextEditingController();
  TextEditingController _contact = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _address = TextEditingController();
  TextEditingController _salary = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
          padding: const EdgeInsets.only(left: 10,top: 10),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Name :",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: TextField(
                  controller: _name,
                  keyboardType:TextInputType.text ,
                  decoration: InputDecoration(border: OutlineInputBorder(),prefixIcon: Icon(Icons.person)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text("Contact :",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: TextField(
                  controller: _contact,
                  keyboardType:TextInputType.phone ,
                  decoration: InputDecoration(border: OutlineInputBorder(),prefixIcon: Icon(Icons.phone)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text("Email :",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: TextField(
                  controller: _email,
                  keyboardType:TextInputType.emailAddress ,
                  decoration: InputDecoration(border: OutlineInputBorder(),prefixIcon: Icon(Icons.email_rounded)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text("Address :",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: TextField(
                  controller: _address,
                  keyboardType:TextInputType.text ,
                  maxLines: 3,
                  decoration: InputDecoration(border: OutlineInputBorder()),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text("Gender :",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Radio(
                    groupValue: gender,
                    value: "F",
                    onChanged: (val)
                    {
                      setState(() {
                        gender=val;
                      });
                    },
                  ),
                  Text("Female",style: TextStyle(fontSize: 18),),
                  Radio(
                    groupValue: gender,
                    value: "M",
                    onChanged: (val)
                    {
                      setState(() {
                        gender=val;
                      });
                    },
                  ),
                  Text("Male",style: TextStyle(fontSize: 18),),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text("Salary :",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: TextField(
                  controller: _salary,
                  keyboardType:TextInputType.number ,
                  decoration: InputDecoration(border: OutlineInputBorder(),prefixIcon: Icon(Icons.monetization_on)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text("Department :",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              SizedBox(
                height: 15,
              ),
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
                    child: Text("Web Development"),
                    value: "Web Development",
                  ),
                  DropdownMenuItem(
                    child: Text("Software Development "),
                    value: "Software Development",
                  ),
                  DropdownMenuItem(
                    child: Text("Mobile Application"),
                    value: "Mobile Application",
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Checkbox(
                    value: ch1,
                    activeColor: Colors.red,
                    onChanged: (val)
                    {
                      print(val);
                      setState(() {
                        ch1=val;
                      });
                    },
                  ),
                  Text("I agree term and condition",style: TextStyle(fontSize: 15,color: Colors.red,fontWeight: FontWeight.bold),),
                ],
              ),
              Text(errmessage),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: (){
                    if(ch1==true)
                      {
                        var name = _name.text.toString();
                        var con = _contact.text.toString();
                        var email = _email.text.toString();
                        var add = _address.text.toString();
                        var sal =_salary.text.toString();

                        setState(() {
                          errmessage ="";
                        });

                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => PraticeFormResult(name: name,contact: con,email: email,
                              adress: add,gender: gender,salary: sal,department: select,))
                        );
                      }
                    else
                      {
                          setState(() {
                            errmessage = "please accept term and condition";
                          });
                      }
                },
                child :Container(
                  width: MediaQuery.of(context).size.width,
                  height: 40.0,
                  margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15.0)
                  ),
                alignment: Alignment.center,
                child: Text("Submit",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
                ),
              ),
            ],
          ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PraticeFormResult extends StatefulWidget {
    var name ="";
    var contact ="";
    var email ="";
    var adress ="";
    var gender ="";
    var salary ="";
    var department ="";

    PraticeFormResult({this.name,this.contact,this.email,this.adress,this.gender,this.salary,this.department});

  @override
  _PraticeFormResultState createState() => _PraticeFormResultState();
}

class _PraticeFormResultState extends State<PraticeFormResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Result"),
      ),
     body: SafeArea(
       child: SingleChildScrollView(
         child: Padding(
           padding: const EdgeInsets.all(10.0),
           child: Container(
             height: 400,
             width: 500,
             child: Card(
               color: Colors.blue[200],
               child: Padding(
                 padding: const EdgeInsets.only(left: 0,top: 10,),
                 child: Column(
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(left: 10),
                       child: Row(
                         children: [
                           Text("Name : "+widget.name,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                         ],
                       ),
                     ),
                     Divider(height: 30,color: Colors.white,),
                     SizedBox(height: 5,),
                     Padding(
                       padding: const EdgeInsets.only(left: 10),
                       child: Row(
                         children: [
                           Text("Contact : "+widget.contact,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                         ],
                       ),
                     ),
                     Divider(height: 30,color: Colors.white,),
                     SizedBox(height: 5,),
                     Padding(
                       padding: const EdgeInsets.only(left: 10),
                       child: Row(
                         children: [
                           Text("Email : "+widget.email,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                         ],
                       ),
                     ),
                     Divider(height: 30,color: Colors.white,),
                     SizedBox(height: 5,),
                     Padding(
                       padding: const EdgeInsets.only(left: 10),
                       child: Row(
                         children: [
                           Text("Address : "+widget.adress,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                         ],
                       ),
                     ),
                     Divider(height: 30,color: Colors.white,),
                     SizedBox(height: 5,),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            Text("Gender : "+widget.gender,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                     Divider(height: 30,color: Colors.white,),
                     SizedBox(height: 5,),
                     Padding(
                       padding: const EdgeInsets.only(left: 10),
                       child: Row(
                         children: [
                           Text("Salary : "+widget.salary,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                         ],
                       ),
                     ),
                     Divider(height: 30,color: Colors.white,),
                     SizedBox(height: 5,),
                     Padding(
                       padding: const EdgeInsets.only(left: 10),
                       child: Row(
                         children: [
                           Text("Department : "+widget.department,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                         ],
                       ),
                     ),
                   ],
                 ),
               ),
             ),
           ),
         ),
       ),
     ),
    );
  }
}

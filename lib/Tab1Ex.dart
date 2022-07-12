import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tab1Ex extends StatefulWidget {

  @override
  _Tab1ExState createState() => _Tab1ExState();
}

class _Tab1ExState extends State<Tab1Ex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: SingleChildScrollView(
      //   child: Column(
      //     children: [
      //       Text("Tab1",style: TextStyle(fontSize: 25,color: Colors.pink,fontWeight: FontWeight.bold)),
      //     ],
      //   ),
      // ),
      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
                radius: 30,
                child:Image.asset("image/girl.png")
            ),
            title: Text("Mansi",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            subtitle: Text("Hi..."),
            trailing: Text("3:00 AM"),
            onTap: (){
              print("ListTitle Click");
            },
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            leading: CircleAvatar(
                radius: 30,
                child: Image.asset("image/mitali.jpg")
            ),
            title: Text("Mitali",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            subtitle: Text("Hi..."),
            trailing: Text("4:00 AM"),
            onTap: (){
              print("ListTitle Click");
            },
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            leading: CircleAvatar(
                radius: 30,
                child: Image.asset("image/krutika.jpg",height: 80,width: 70,)
            ),
            title: Text("Krutika",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            subtitle: Text("Hi..."),
            trailing: Text("3:00 AM"),
            onTap: (){
              print("ListTitle Click");
            },
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            leading: CircleAvatar(
                radius: 30,
                child: Image.asset("image/bhumi.png")
            ),
            title: Text("Bhumi",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            subtitle: Text("Hi..."),
            trailing: Text("6:00 AM"),
            onTap: (){
              print("ListTitle B Click");
            },
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              child: Text("R"),
            ),
            title: Text("Riya",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            subtitle: Text("Hi..."),
            trailing: Text("3:00 AM"),
            onTap: (){
              print("ListTitle Click");
            },
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              child: Text("E"),
            ),
            title: Text("Mansi",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            subtitle: Text("Hi..."),
            trailing: Text("3:00 AM"),
            onTap: (){
              print("ListTitle Click");
            },
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              child: Text("D"),
            ),
            title: Text("Mansi",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            subtitle: Text("Hi..."),
            trailing: Text("3:00 AM"),
            onTap: (){
              print("ListTitle Click");
            },
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              child: Text("C"),
            ),
            title: Text("Mansi",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            subtitle: Text("Hi..."),
            trailing: Text("3:00 AM"),
            onTap: (){
              print("ListTitle Click");
            },
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              child: Text("B"),
            ),
            title: Text("Mansi",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            subtitle: Text("Hi..."),
            trailing: Text("3:00 AM"),
            onTap: (){
              print("ListTitle Click");
            },
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              child: Text("A"),
            ),
            title: Text("Mansi",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            subtitle: Text("Hi..."),
            trailing: Text("3:00 AM"),
            onTap: (){
              print("ListTitle Click");
            },
          ),
          Divider(
            color: Colors.black,
          ),

          // Container(
          //   margin: EdgeInsets.all(10),
          //   width: MediaQuery.of(context).size.width,
          //   height: 200,
          //   color: Colors.red,
          // ),
          // Container(
          //   margin: EdgeInsets.all(10),
          //   width: MediaQuery.of(context).size.width,
          //   height: 200,
          //   color: Colors.red,
          // ),
          // Container(
          //   margin: EdgeInsets.all(10),
          //   width: MediaQuery.of(context).size.width,
          //   height: 200,
          //   color: Colors.red,
          // ),
          // Container(
          //   margin: EdgeInsets.all(10),
          //   width: MediaQuery.of(context).size.width,
          //   height: 200,
          //   color: Colors.red,
          // ),
          // Container(
          //   margin: EdgeInsets.all(10),
          //   width: MediaQuery.of(context).size.width,
          //   height: 200,
          //   color: Colors.red,
          // ),
          // Container(
          //   margin: EdgeInsets.all(10),
          //   width: MediaQuery.of(context).size.width,
          //   height: 200,
          //   color: Colors.red,
          // ),

        ],
      ),
    );
  }
}

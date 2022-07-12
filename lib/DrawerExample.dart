import 'package:firstapp/Addition.dart';
import 'package:firstapp/DialNumber.dart';
import 'package:firstapp/DropDownExample.dart';
import 'package:firstapp/GridViewExample.dart';
import 'package:firstapp/ImageExample.dart';
import 'package:firstapp/ListViewExample.dart';
import 'package:firstapp/Mobile.dart';
import 'package:firstapp/MxPlayerExample.dart';
import 'package:firstapp/RadioResult.dart';
import 'package:firstapp/TextFieldEx.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerExample extends StatefulWidget {
  @override
  _DrawerExampleState createState() => _DrawerExampleState();
}

class _DrawerExampleState extends State<DrawerExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer Example.."),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(icon: Icon(Icons.remove_red_eye_sharp,),
              onPressed: () {
                      Scaffold.of(context).openDrawer();
                  },
            );
            },
        ),
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.search),
          ),
          PopupMenuButton(
              onSelected: (val)
              {
                if(val==1)
                  {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Addition())
                    );
                  }
                else if(val==2)
                  {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => ImageExample())
                    );
                  }
                else if(val==3)
                {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => GridViewExample())
                  );
                }
                else if(val==4)
                {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Mobile())
                  );
                }
                else if(val==5)
                {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => MxPlayerExample())
                  );
                }
                else
                  {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => TextFieldEx())
                    );
                  }
              },
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: Text("New group"),
                  value: 1,
                ),
                PopupMenuItem(
                  child: Text("New broadcast"),
                  value: 2,
                ),
                PopupMenuItem(
                  child: Text("Linked devices"),
                  value: 3,
                ),
                PopupMenuItem(
                  child: Text("Starred message"),
                  value: 4,
                ),
                PopupMenuItem(
                  child: Text("Payments"),
                  value: 5,
                ),
                PopupMenuItem(
                  child: Text("Settings"),
                  value: 6,
                )
              ]
          )
        ],
      ),

      body: Text("Drawer Example",style: TextStyle(fontSize: 15),),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                child: Text("M"),
              ),
              accountName: Text("Mansi Patel.."),
              accountEmail: Text("mansippatel.0105gmail.com"),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("ListView"),
              trailing: Icon(Icons.arrow_right_alt),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context)=>ListViewExample())
                );
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.grid_view),
              title: Text("GridView"),
              trailing: Icon(Icons.arrow_right_alt),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=>GridViewExample())
                );
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.play_circle_fill_outlined),
              title: Text("MxPlayer"),
              trailing: Icon(Icons.arrow_right_alt),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=>MxPlayerExample())
                );
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.arrow_drop_down_outlined),
              title: Text("DropDown"),
              trailing: Icon(Icons.arrow_right_alt),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=>DropDownExample())
                );
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text("DialNumber"),
              trailing: Icon(Icons.arrow_right_alt),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=>DialNumber())
                );
              },
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}

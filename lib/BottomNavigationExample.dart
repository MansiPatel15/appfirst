import 'package:firstapp/ButtonExample.dart';
import 'package:firstapp/DialNumber.dart';
import 'package:firstapp/Mobile.dart';
import 'package:firstapp/MxPlayerExample.dart';
import 'package:firstapp/Tab1Ex.dart';
import 'package:flutter/material.dart';

class BottomNavigationExample extends StatefulWidget {
  @override
  _BottomNavigationExampleState createState() => _BottomNavigationExampleState();
}

class _BottomNavigationExampleState extends State<BottomNavigationExample> {

  var selected=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navigation"),
        backgroundColor: (selected==0)?Colors.red:(selected==1)?Colors.green:(selected==2)?Colors.blue:Colors.purple,
      ),
        floatingActionButton: Container(
          height: 65.0,
          width: 65.0,
          child: FittedBox(
            child: FloatingActionButton(
              onPressed: (){},
              child: Icon(Icons.add, color: Colors.white,),
              backgroundColor: (selected==0)?Colors.red:(selected==1)?Colors.green:(selected==2)?Colors.blue:Colors.purple,
              // elevation: 5.0,
            ),
          ),
        ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          color: Colors.blue,
          // elevation: 20.0,
            shape: CircularNotchedRectangle(),
            child: Container(
              height: 75,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Column(
                  children: [
                    IconButton(
                      iconSize: 30.0,
                     // padding: EdgeInsets.only(left: 28.0),
                      icon: Icon(Icons.home),
                      onPressed: () {
                        setState(() {
                          selected = 0;
                          print("${selected}");
                        });
                      },
                    ),
                    Text("Home"),
                  ],
                ),
                 Column(
                   children: [
                     IconButton(
                       iconSize: 30.0,
                    //   padding: EdgeInsets.only(right: 30.0),
                       icon: Icon(Icons.search),
                       onPressed: () {
                         setState(() {
                           selected= 1;
                           print("${selected}");
                         });
                       },
                     ),
                     Text("Search")
                   ],
                 ),
                  Column(
                    children: [
                      IconButton(
                        iconSize: 30.0,
                        //padding: EdgeInsets.only(left: 28.0),
                        icon: Icon(Icons.notifications),
                        onPressed: () {
                          setState(() {
                            selected = 2;
                            print("${selected}");
                          });
                        },
                      ),
                      Text("Notifications")
                    ],
                  ),
                 Column(
                   children: [
                     IconButton(
                       iconSize: 30.0,
                       //padding: EdgeInsets.only(right: 28.0),
                       icon: Icon(Icons.list),
                       onPressed: () {
                         setState(() {
                           selected = 3;
                           print("${selected}");
                         });
                       },
                     ),
                     Text("List")
                   ],
                 )
                ],
              ),
            )
        ),
      //   floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      //   floatingActionButton: FloatingActionButton(
      //     onPressed: () { },
      //     tooltip: 'Increment',
      //     child: Icon(Icons.add),
      //     elevation: 2.0,
      //   ),
      // bottomNavigationBar: BottomNavigationBar(
      //   type: BottomNavigationBarType.fixed,
      //   currentIndex: selected,
      //   selectedItemColor: Colors.red,
      //   unselectedItemColor: Colors.blue,
      //   backgroundColor: Colors.black,
      //   onTap: (index)
      //   {
      //     setState(() {
      //       selected=index;
      //     });
      //   },
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: "Home"
      //     ),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.adb),
      //         label: "About"
      //     ),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.account_box),
      //         label: "Account"
      //     ),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.call),
      //         label: "Contact"
      //     ),
      //   ],
      // ),
      body: SingleChildScrollView(
        child: ElevatedButton(
          child: Text("Click Me!"),
          onPressed: (){
            showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
              return Container(
                height: 1500,
                color: Colors.blue[200],
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                   // mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Modal BottomSheet'),
                      ElevatedButton(
                        child:Text('Close BottomSheet'),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ],
                  ),
                ),
              );
            },
            );
          },
      ),
      // body: (selected==0)?Tab1Ex():(selected==1)?Mobile():(selected==2)?MxPlayerExample():DialNumber()
      // body: SingleChildScrollView(
      //   child: Column(
      //      children: [
      //        (selected==0)?Text("Item 1"):Visibility(child: Text("demo"),visible: false,),
      //        (selected==1)?Text("Item 2"):Visibility(child: Text("demo"),visible: false,),
      //        (selected==2)?Text("Item 3"):Visibility(child: Text("demo"),visible: false,),
      //      ],
      //   ),
      // ),
    ),
    );
  }
}

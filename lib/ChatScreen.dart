import 'package:flutter/material.dart';

import 'Addition.dart';
import 'GridViewExample.dart';
import 'ImageExample.dart';
import 'Mobile.dart';
import 'MxPlayerExample.dart';
import 'Tab1Ex.dart';
import 'Tab2Ex.dart';
import 'Tab3Ex.dart';
import 'TextFieldEx.dart';

class ChatScreen extends StatefulWidget {

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

  @override
  Widget build(BuildContext context) {
     return Scaffold(
          appBar:PreferredSize(
            preferredSize: Size.fromHeight(63),
            child: AppBar(
              backgroundColor: Colors.blue,
              leading: IconButton(
                padding: EdgeInsets.zero,
                icon: Icon(Icons.arrow_back),
                onPressed: (){},
              ),
            titleSpacing: 0,
            title :ListTile(
              contentPadding: EdgeInsets.all(0),
              leading: CircleAvatar(radius: (20),
                  backgroundColor: Colors.white,
                  child: ClipRRect(
                    borderRadius:BorderRadius.circular(50),
                    child: Image.asset("image/1.jpg"),
                  )
              ),

              title: Text("Karon Infotech.. ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.white),),
              subtitle: Text("tap here for group info",style: TextStyle(fontSize: 12,color: Colors.white),),
            ),
              actions: [
              IconButton(
                onPressed:(){} ,
                icon: Icon(Icons.video_call),
              ),
              IconButton(
                onPressed:(){} ,
                icon: Icon(Icons.call),
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
                itemBuilder: (context) =>
                [
                  PopupMenuItem(
                    child: Text("Group info"),
                    value: 1,
                  ),
                  PopupMenuItem(
                    child: Text("Group media"),
                    value: 2,
                  ),
                  PopupMenuItem(
                    child: Text("Search"),
                    value: 3,
                  ),
                  PopupMenuItem(
                    child: Text("Mute notifications"),
                    value: 4,
                  ),
                  PopupMenuItem(
                    child: Text("Wallpapaer"),
                    value: 5,
                  ),
                  PopupMenuItem(
                    child: Text("More"),
                    value: 6,
                  ),
                ],
              ),
            ],
          ),
          ),
       body: Stack(
         children: [
           Container(
             height: MediaQuery.of(context).size.height,
             width: MediaQuery.of(context).size.width,
             color: Colors.black12,
           ),
           Positioned(
             bottom: 10,
             left: 10,
             right: 60,
             child: Container(
               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(50),
               ),
               height: 50,
               child:  TextField(
                 keyboardType: TextInputType.text,
                 decoration: InputDecoration(
                   border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(50)),
                   isDense: true,
                   prefixIcon: Icon(Icons.tag_faces_rounded,size: 25,color: Colors.black45,),
                    hintText: "Message",
                   suffixIcon: Container(
                     width: 150,
                     child: Row(
                       children: [
                         IconButton(
                           onPressed: () {
                             print('Attach File button pressed');
                           },
                           icon: Icon(Icons.attachment_outlined,size:25,color: Colors.black45,),
                         ),
                         IconButton(
                           onPressed: () {
                             print('attachment_outlined button pressed');
                           },
                           icon: Icon(Icons.attach_money_outlined,size:25,color: Colors.black45,),
                         ),
                         IconButton(
                           onPressed: () {
                             print('camera button pressed');
                           },
                           icon: Icon(Icons.camera_alt,size:25,color: Colors.black45,),
                         ),
                       ],
                     ),
                   ),
                 ),
               ),
             ),
           ),
           Positioned(
             bottom: 10,
             right: 5,
             child: Container(
                 decoration:BoxDecoration(
                   color: Colors.blue[500],
                   borderRadius: BorderRadius.all(Radius.circular(30)),),
                 width: 50,
                 height: 50,
                 child:IconButton(
                   icon: Icon(Icons.mic,size: 30,color: Colors.white,),
                   alignment: Alignment.center,
                   onPressed: (){
                     print('mic button pressed');
                   },
                 ),
               ),
             ),
           Positioned(
            top: 0,
             bottom: 70,
             child: Container(
               height: MediaQuery.of(context).size.height,
               width: MediaQuery.of(context).size.width,
             // margin: new EdgeInsets.symmetric(horizontal: 20.0),
               child: ListView(
                 children: [
                   Card(
                     child: Image.asset("image/2.jpg",),
                   ),
                   Card(
                     child: Image.asset("image/2.jpg",),
                   ),
                   Card(
                     child: Image.asset("image/2.jpg",),
                   ),
                   Card(
                     child: Image.asset("image/2.jpg",),
                   ),
                   Card(
                     child: Image.asset("image/2.jpg",),
                   ),
                 ],
               ),
             )
           )
         ],
       ),
      );
  }
}

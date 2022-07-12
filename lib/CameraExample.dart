// import 'dart:html';

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:image_picker/image_picker.dart';

class CameraExample extends StatefulWidget {

  @override
  _CameraExampleState createState() => _CameraExampleState();
}

class _CameraExampleState extends State<CameraExample> {
  List<Contact> _contacts;
  bool _permissionDenied = false;

  @override
  void initState() {
    super.initState();
    _fetchContacts();
  }

  Future _fetchContacts() async {
    if (!await FlutterContacts.requestPermission(readonly: true)) {
      setState(() => _permissionDenied = true);
    } else {
      final contacts = await FlutterContacts.getContacts();
      setState(() => _contacts = contacts);
    }
  }
  ImagePicker _picker = ImagePicker();
  File file;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CameraExample"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child : Padding(padding: EdgeInsets.all(15),
        child: Column(
          children: [
               ElevatedButton(
                 onPressed: () async {
                   XFile pickedimage = await _picker.pickImage(source: ImageSource.camera);
                   setState(() {
                     file = File(pickedimage.path);
                   });
                 },
                 child: Text("Camera"),
               ),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () async
              {
                XFile pickedimage = await _picker.pickImage(source: ImageSource.gallery);
                setState(() {
                  file = File(pickedimage.path);
                });
              },
              child: Text("Gallery"),
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: (){},
              child: Text("Contact"),
            )
            ],
        ),
        ),
      ),
    ),
    );
  }
}

import 'package:firstapp/Addition.dart';
import 'package:firstapp/ButtonExample.dart';
import 'package:firstapp/CheckBoxExample.dart';
import 'package:firstapp/DialNumber.dart';
import 'package:firstapp/DrawerExample.dart';
import 'package:firstapp/DropDownExample.dart';
import 'package:firstapp/FirstScreen.dart';
import 'package:firstapp/GridViewExample.dart';
import 'package:firstapp/HomePage.dart';
import 'package:firstapp/ImgEx.dart';
import 'package:firstapp/Mobile.dart';
import 'package:firstapp/Number.dart';
import 'package:firstapp/PraticeForm.dart';
import 'package:firstapp/RadioExample.dart';
import 'package:firstapp/StackExample.dart';
import 'package:firstapp/TextFieldEx.dart';
import 'package:firstapp/TextFieldExample.dart';
import 'package:firstapp/TextFromFieldExample.dart';
import 'package:flutter/material.dart';

import 'AlertDialogExample.dart';
import 'BottomNavigationExample.dart';
import 'CallExample.dart';
import 'CameraExample.dart';
import 'ChatScreen.dart';
import 'EmailExample.dart';
import 'ExpandedandFlexibleExample.dart';
import 'FlutterToastExample.dart';
import 'ImageExample.dart';
import 'ListViewExample.dart';
import 'LoginForm.dart';
import 'MxPlayerExample.dart';
import 'ShareTextExample.dart';
import 'TabExample.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginForm(),
    );
  }
}



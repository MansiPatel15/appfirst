import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  TabController _tcontroller;
  final List<String> titleList = ["Home Page", "List Page", "Message Page"];
  String currentTitle;

  @override
  void initState() {
    currentTitle = titleList[0];
    _tcontroller = TabController(length: 3, vsync: this);
    _tcontroller.addListener(changeTitle); // Registering listener
    super.initState();
  }

  // This function is called, every time active tab is changed
  void changeTitle() {
    setState(() {
      // get index of active tab & change current appbar title
      currentTitle = titleList[_tcontroller.index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(currentTitle),
        centerTitle: true,
        bottom: TabBar(
          controller: _tcontroller,
          tabs: <Widget>[
            Icon(Icons.home),
            Icon(Icons.format_list_bulleted),
            Icon(Icons.message),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tcontroller,
        children: <Widget>[
          Center(child: Text(titleList[0])),
          Center(child: Text(titleList[1])),
          Center(child: Text(titleList[2])),
        ],
      ),
    );
  }
}

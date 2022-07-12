import 'package:flutter/material.dart';

class GridViewExample extends StatefulWidget {

  @override
  _GridViewExampleState createState() => _GridViewExampleState();
}

class _GridViewExampleState extends State<GridViewExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridViewExample"),
      ),
      body: GridView(
          gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount
            (
            crossAxisCount: 2,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5
            ),
          children: [
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xff3366ff),
                        Color(0xff00ccff)
                      ],
                    )
                  ),
                ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xff3366ff),
                      Color(0xff00ccff)
                    ],
                  )
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              color: Colors.red,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              color: Colors.red,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              color: Colors.red,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              color: Colors.red,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              color: Colors.red,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              color: Colors.red,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              color: Colors.red,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              color: Colors.red,
            ),
        ],
      ),

      // body: GridView.count(
      //       crossAxisCount: 2,
      //       children: [
      //         Container(
      //           margin: EdgeInsets.all(10),
      //           width: MediaQuery.of(context).size.width,
      //           height: 200,
      //           color: Colors.red,
      //         ),
      //         Container(
      //           margin: EdgeInsets.all(10),
      //           width: MediaQuery.of(context).size.width,
      //           height: 200,
      //           color: Colors.red,
      //         ),
      //         Container(
      //           margin: EdgeInsets.all(10),
      //           width: MediaQuery.of(context).size.width,
      //           height: 200,
      //           color: Colors.red,
      //         ),
      //         Container(
      //           margin: EdgeInsets.all(10),
      //           width: MediaQuery.of(context).size.width,
      //           height: 200,
      //           color: Colors.red,
      //         ),
      //         Container(
      //           margin: EdgeInsets.all(10),
      //           width: MediaQuery.of(context).size.width,
      //           height: 200,
      //           color: Colors.red,
      //         ),
      //         Container(
      //           margin: EdgeInsets.all(10),
      //           width: MediaQuery.of(context).size.width,
      //           height: 200,
      //           color: Colors.red,
      //         ),
      //   ],
      // ),
    );
  }
}

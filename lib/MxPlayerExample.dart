import 'package:flutter/material.dart';

class MxPlayerExample extends StatefulWidget {

  @override
  _MxPlayerExampleState createState() => _MxPlayerExampleState();
}

class _MxPlayerExampleState extends State<MxPlayerExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MxPlayer"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                width: MediaQuery.of(context).size.width,
                height: 300,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.all(15.0),
                      height: 300,
                      decoration: new BoxDecoration(
                        image: new DecorationImage(image: new AssetImage("image/1.jpg"),fit: BoxFit.fill),
                      ),
                  ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.all(15.0),
                      height: 300,
                      decoration: new BoxDecoration(
                        image: new DecorationImage(image: new AssetImage("image/2.jpg"),fit: BoxFit.fill)
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.all(15.0),
                      height: 300,
                      decoration: new BoxDecoration(
                          image: new DecorationImage(image: new AssetImage("image/3.jpg"),fit: BoxFit.fill)
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.all(15.0),
                      height: 300,
                      decoration: new BoxDecoration(
                          image: new DecorationImage(image: new AssetImage("image/4.jpg"),fit: BoxFit.fill)
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.all(15.0),
                      height: 300,
                      decoration: new BoxDecoration(
                          image: new DecorationImage(image: new AssetImage("image/5.jpg"),fit: BoxFit.fill)
                      ),
                    ),
                  ],
                ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Top Shows on MX",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                  Text("See More",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                  width: MediaQuery.of(context).size.width,
                  height: 250,
                  child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          width: 150,
                          margin: EdgeInsets.only(left: 10,top: 5,right: 0,bottom: 0),
                          child: Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            child: Image.asset("image/6.jpg",fit: BoxFit.fill,),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                        Container(
                          width: 150,
                          margin: EdgeInsets.only(left: 5,top: 5,right: 0,bottom: 0),
                          child: Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            child: Image.asset("image/7.jpg",fit: BoxFit.cover),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                        Container(
                          width: 150,
                          margin: EdgeInsets.only(left: 5,top: 5,right: 0,bottom: 0),
                          child: Card(
                            child: Image.asset("image/8.jpg",fit: BoxFit.fill,),
                          ),
                        ),
                        Container(
                          width: 150,
                          margin: EdgeInsets.only(left: 5,top: 5,right: 0,bottom: 0),
                          child: Card(
                            child: Image.asset("image/9.jpg",fit: BoxFit.fill,),
                          ),
                        ),
                        Container(
                          width: 150,
                          margin: EdgeInsets.only(left: 5,top: 5,right: 0,bottom: 0),
                          child: Card(
                            child: Image.asset("image/10.jpg",fit: BoxFit.fill,),
                          ),
                        ),
                      ],
                    ),
                  ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Top 10 This Week",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: 200,
                    margin: EdgeInsets.only(left: 10,top: 5,right: 0,bottom: 0),
                    child: Card(
                      child: Image.asset("image/6.jpg",fit: BoxFit.fill,),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                  Container(
                    width: 200,
                    margin: EdgeInsets.only(left: 5,top: 5,right: 0,bottom: 0),
                    child: Card(
                      color: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Image.asset("image/7.jpg",fit: BoxFit.cover),
                    ),
                  ),
                  Container(
                    width: 200,
                    margin: EdgeInsets.only(left: 5,top: 5,right: 0,bottom: 0),
                    child: Card(
                      child: Image.asset("image/8.jpg",fit: BoxFit.fill,),
                    ),
                  ),
                  Container(
                    width: 200,
                    margin: EdgeInsets.only(left: 5,top: 5,right: 0,bottom: 0),
                    child: Card(
                      child: Image.asset("image/9.jpg",fit: BoxFit.fill,),
                    ),
                  ),
                  Container(
                    width: 200,
                    margin: EdgeInsets.only(left: 5,top: 5,right: 0,bottom: 0),
                    child: Card(
                      child: Image.asset("image/10.jpg",fit: BoxFit.fill,),
                    ),
                  ),
                ],
              ),
            ),
              ],
        ),
      ),
    );
  }
}

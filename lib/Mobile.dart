import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mobile extends StatefulWidget {
  @override
  _MobileState createState() => _MobileState();
}

class _MobileState extends State<Mobile> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                color: Color(0xffe3f5f5),
                // Image.asset("image/iconBgNew.png"),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Image.asset("image/boy1.png",
                          height: 200, width: 200),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Mr. Peter Parker",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "English Teacher",
                          style: TextStyle(color: Colors.cyan, fontSize: 15),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.cyan,
                              size: 25,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text("4.9 Star Rating"),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Image.asset("image/palette.png",
                                width: 20, height: 20),
                            SizedBox(
                              width: 10,
                            ),
                            Text("5 Years Experience"),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20, top: 5, right: 20, bottom: 0),
                        child: Text(
                          "About Peter",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20, top: 5, right: 20, bottom: 0),
                    child: Text(
                        "There are many variations of passages of Lorem Ipsum "
                        "available, but the majority have suffered alteration in some form, by injected humour,"
                        " or randomised words which don't look even slightly believable. "),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text("Course by Peter", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 120,
                            width: 180,
                            child: Card(
                              color: Color(0xffd9f0f4),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0)),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 5, top: 5, right: 0, bottom: 0),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 20),
                                      child: Column(
                                        children: [
                                          Text("Young \n Learners", style: TextStyle(fontSize: 17, color: Colors.cyan),),
                                          Text("GRADE 0-1", style: TextStyle(fontSize: 12, color: Colors.grey),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Image.asset("image/icon1.png",
                                      height: 81,
                                      width: 86,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 120,
                            width: 180,
                            child: Card(
                              color: Color(0xffFFED9C),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 5, top: 5, right: 0, bottom: 0),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 20),
                                      child: Column(
                                        children: [
                                          Text("Creative \n Bloomers", style: TextStyle(fontSize: 17, color: Colors.cyan),),
                                          Text("GRADE 0-2", style: TextStyle(fontSize: 12, color: Colors.grey),),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Image.asset(
                                      "image/icon2.png",
                                      height: 81,
                                      width: 81,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text("Availability",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            child: Card(
                              color: Color(0xffFFED9C),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 5, top:0,right: 0, bottom: 0),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text("Mon", style: TextStyle(fontSize: 17, color: Colors.black),),
                                          Text("27", style: TextStyle(fontSize: 19, color: Colors.black,fontWeight: FontWeight.bold),),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            child: Card(
                              color: Color(0xffEBF7F9),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                              child:Padding(
                                padding: const EdgeInsets.only(left: 5, top:0,right: 0, bottom: 0),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text("Tue", style: TextStyle(fontSize: 17, color: Colors.black),),
                                          Text("28", style: TextStyle(fontSize: 19, color: Colors.black,fontWeight: FontWeight.bold),),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                  ],
                                ),
                              ),
                              ),
                            ),
                          Container(
                            child: Card(
                              color: Color(0xffEBF7F9),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                              child:Padding(
                                padding: const EdgeInsets.only(left: 5, top:0,right: 0, bottom: 0),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text("Wed", style: TextStyle(fontSize: 17, color: Colors.black),),
                                          Text("29", style: TextStyle(fontSize: 19, color: Colors.black,fontWeight: FontWeight.bold),),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),

                          Container(
                            child: Card(
                              color: Color(0xffEBF7F9),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                              child:Padding(
                                padding: const EdgeInsets.only(left: 5, top:0,right: 0, bottom: 0),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text("Thu", style: TextStyle(fontSize: 17, color: Colors.black),),
                                          Text("30", style: TextStyle(fontSize: 19, color: Colors.black,fontWeight: FontWeight.bold),),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),

                          Container(
                            child: Card(
                              color: Color(0xffEBF7F9),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                              child:Padding(
                                padding: const EdgeInsets.only(left: 5, top:0,right: 0, bottom: 0),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text("Fri", style: TextStyle(fontSize: 17, color: Colors.black),),
                                          Text("31", style: TextStyle(fontSize: 19, color: Colors.black,fontWeight: FontWeight.bold),),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),

                          Container(
                            child: Card(
                              color: Color(0xffEBF7F9),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                              child:Padding(
                                padding: const EdgeInsets.only(left: 5, top:0,right: 0, bottom: 0),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text("Sat", style: TextStyle(fontSize: 17, color: Colors.black),),
                                          Text("1", style: TextStyle(fontSize: 19, color: Colors.black,fontWeight: FontWeight.bold),),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),

                          Container(
                            child: Card(
                              color: Color(0xffEBF7F9),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                              child:Padding(
                                padding: const EdgeInsets.only(left: 5, top:0,right: 0, bottom: 0),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text("Sun", style: TextStyle(fontSize: 17, color: Colors.black),),
                                          Text("2", style: TextStyle(fontSize: 19, color: Colors.black,fontWeight: FontWeight.bold),),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Container(
                              child: Card(
                                color: Color(0xffEBF7F9),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                                child:Padding(
                                  padding: const EdgeInsets.only(left: 10, top:5,right: 0, bottom: 10),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Text("11:00 AM", style: TextStyle(fontSize: 17, color: Colors.black),),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                          Container(
                            child: Card(
                              color: Color(0xffEBF7F9),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                              child:Padding(
                                padding: const EdgeInsets.only(left: 10, top:5,right: 0, bottom: 10),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text("12:00 PM", style: TextStyle(fontSize: 17, color: Colors.black),),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),

                          Container(
                            child: Card(
                              color: Color(0xffEBF7F9),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                              child:Padding(
                                padding: const EdgeInsets.only(left: 10, top:5,right: 0, bottom: 10),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text("1:00 PM", style: TextStyle(fontSize: 17, color: Colors.black),),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),

                          Container(
                            child: Card(
                              color: Color(0xffF3E5F6),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                              child:Padding(
                                padding: const EdgeInsets.only(left: 10, top:5,right: 0, bottom: 10),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text("3:00 PM", style: TextStyle(fontSize: 17, color: Colors.black),),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Container(
                              child: Card(
                                color: Color(0xffEBF7F9),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                                child:Padding(
                                  padding: const EdgeInsets.only(left: 10,top:5,right: 0, bottom: 10),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Text("4:00 PM", style: TextStyle(fontSize: 17, color: Colors.black),),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                          Container(
                              child: Card(
                                color: Color(0xffEBF7F9),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                                child:Padding(
                                  padding: const EdgeInsets.only(left: 10, top:5,right: 0, bottom: 10),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Text("5:00 PM", style: TextStyle(fontSize: 17, color: Colors.black),),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                         color: Colors.blue,
                        alignment: Alignment.center,
                      // decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
                        child:
                        Padding(
                          padding: const EdgeInsets.only(left: 10,top: 10,right: 10,bottom: 10),
                          child: Text("Make an Appoinment",style: TextStyle(fontSize: 20,color: Colors.white)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

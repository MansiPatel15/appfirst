import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageExample extends StatefulWidget {
  @override
  _ImageExampleState createState() => _ImageExampleState();
}

class _ImageExampleState extends State<ImageExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Example"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Icon(Icons.mail,color: Colors.blue,size: 100.0,),
            Image.asset("img/slider.jpg",width: 200.0,height: 300.0,),
            FadeInImage.assetNetwork(placeholder: "img/slider.jpg", image: "https://food.fnr.sndimg.com/content/dam/images/food/fullset/2011/6/9/0/BX0202H_sliders_s4x3.jpg.rend.hgtvcom.616.462.suffix/1371597695088.jpeg")
            // Image.network("https://img.buzzfeed.com/thumbnailer-prod-us-east-1/30bc761b30c0414481db84df78bed152/BFV10402_Sliders4Ways.jpg",width: 200.0,height: 300.0,)
          ],
        ),
      ),
    );
  }
}

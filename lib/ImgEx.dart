import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImgEx extends StatefulWidget {

  @override
  _ImageState createState() => _ImageState();
}

class _ImageState extends State<ImgEx> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image"),
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("image/pizza.jpg",width: 500,height: 300,),
          // Image.network("https://yourbetterkitchen.com/wp-content/uploads/2015/06/pizza-pie-1024x655.jpg",width: 600,height: 400,),
            FadeInImage.assetNetwork(placeholder: "image/pizza.jpg", image: "https://food.fnr.sndimg.com/content/dam/images/food/fullset/2011/6/9/0/BX0202H_sliders_s4x3.jpg.rend.hgtvcom.616.462.suffix/1371597695088.jpeg")
          ],
        ),
      )
    );
  }
}

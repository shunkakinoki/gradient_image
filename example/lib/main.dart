import 'package:flutter/material.dart';

import 'package:gradient_image/gradient_image.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new Scaffold(
          appBar: new AppBar(
            brightness: Brightness.light,
            backgroundColor: Colors.transparent,
            centerTitle: true,
            elevation: 0.0,
            title: new Text(
              'Gradient Image',
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w300),
            ),
          ),
          backgroundColor: Colors.white,
          body: Center(
            child: Container(
              height: 300,
              width: 300,
              child: GradientImage(
                  image: NetworkImage(
                      'https://www.gstatic.com/webp/gallery3/1.png')),
            ),
          ),
        ));
  }
}

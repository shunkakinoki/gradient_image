library gradient_image;

import 'package:flutter/material.dart';

class GradientImage extends StatelessWidget {
  GradientImage(
      {@required this.image,
      @required this.height,
      this.width,
      this.gradient,
      this.startColor,
      this.endColor});

  final ImageProvider image;
  final double height;
  final double width;
  final bool gradient;
  final Color startColor;
  final Color endColor;

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Container(
          height: height,
          width: double.infinity,
          child: DecoratedBox(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: image,
              ),
              // ...
            ),
          )),
      Container(
        height: height,
        decoration: BoxDecoration(
            color: Colors.white,
            gradient: LinearGradient(
                begin: FractionalOffset.topCenter,
                end: FractionalOffset.bottomCenter,
                colors: [
                  startColor,
                  endColor,
                ],
                stops: [
                  0.0,
                  1.0
                ])),
      )
    ]);
  }
}

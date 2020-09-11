import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class Slideshow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: MediaQuery.of(context).size.width,
      child: Carousel(
        animationDuration: Duration(seconds: 2),
        animationCurve: Curves.easeInOut,
        indicatorBgPadding: 5,
        images: [
          AssetImage('images/business'),
          AssetImage('images/hub'),
          AssetImage('images/hub1'),
          AssetImage('images/raspberry'),
        ],
      ),
    );
  }
}

import 'package:e_commerce/mywidgets/featured_product.dart';
import 'package:e_commerce/mywidgets/slide_homescreen.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //slideshow
          Slideshow(),
          //featured product
          FeaturedProduct(),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class FeaturedProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            "Featured",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          trailing: Text(
            "See All",
            style: TextStyle(color: Theme.of(context).primaryColor),
          ),
        ),
        //featured images
        Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            color: Colors.red),
      ],
    );
  }
}

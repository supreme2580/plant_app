import 'package:flutter/material.dart';
import 'package:helloworld/screens/home/components/features_plants.dart';
import 'package:helloworld/screens/home/components/header_with_searchbox.dart';
import 'package:helloworld/screens/home/components/recommended_plants.dart';
import 'package:helloworld/screens/home/components/title_with_more_btn.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: "Recommended", press: () {}),
          RecommendedPlants(),
          TitleWithMoreBtn(title: "Featured Plants", press: () {}),
          FeaturedPlants(size: size)
        ],
      ),
    );
  }
}

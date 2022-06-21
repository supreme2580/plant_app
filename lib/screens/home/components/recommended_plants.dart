import 'package:flutter/material.dart';
import 'package:helloworld/constant.dart';

import '../../details/details_screen.dart';

class RecommendedPlants extends StatelessWidget {
  const RecommendedPlants({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          RecommendedPlanetCard(
              image: "assets/images/image_1.png",
              title: "Samantha",
              country: "Russia",
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen()));
              },
              price: 440),
          RecommendedPlanetCard(
              image: "assets/images/image_2.png",
              title: "Angelica",
              country: "Russia",
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen()));
              },
              price: 440),
          RecommendedPlanetCard(
              image: "assets/images/image_3.png",
              title: "Samantha",
              country: "Russia",
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen()));
              },
              price: 440),
        ],
      ),
    );
  }
}

class RecommendedPlanetCard extends StatelessWidget {
  const RecommendedPlanetCard({Key? key, required this.image, required this.title, required this.country, required this.press, required this.price}) : super(key: key);

  final String image, title, country;
  final Function() press;
  final int price;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
        left: kDefaultPadding,
      ),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Image.asset(image),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  )
                ],
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(text: "$title\n".toUpperCase(), style: Theme.of(context).textTheme.button),
                    TextSpan(text: "$country".toUpperCase(), style: TextStyle(color: kPrimaryColor.withOpacity(0.5)))
                  ])),
                  Spacer(),
                  Text("\$$price", style: TextStyle(fontSize: 15, color: kPrimaryColor))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

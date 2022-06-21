import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:helloworld/constant.dart';
import 'package:helloworld/screens/home/components/body.dart';
import 'package:helloworld/screens/home/components/bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: buildAppbar(), body: Body(), bottomNavigationBar: BottomNavBar());
  }

  AppBar buildAppbar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(onPressed: () {}, icon: SvgPicture.asset("assets/icons/menu.svg")),
      backgroundColor: kPrimaryColor,
    );
  }
}

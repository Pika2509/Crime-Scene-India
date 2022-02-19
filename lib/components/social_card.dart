import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:crimeapp/size_config.dart';

class SocailCard extends StatelessWidget {
  const SocailCard({
    Key? key, required this.icon, required this.press,
  }) : super(key: key);

  final String icon;
  final Function() press;
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: getPropionateScreenWidth(10)),
        padding: EdgeInsets.all(getPropionateScreenWidth(12)),
        height: getProportionateScreenHeight(20),
        width: getPropionateScreenWidth(40),
        decoration: BoxDecoration(
          color: Color(0xFFF5F6F9),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(icon),
      ),
    );
  }
}




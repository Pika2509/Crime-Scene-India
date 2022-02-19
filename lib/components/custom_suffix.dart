import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../size_config.dart';

class customSufficIcon extends StatelessWidget {
  const customSufficIcon({
    Key? key, required this.svgIcon,
  }) : super(key: key);

  final String svgIcon;
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        0, 
        getPropionateScreenWidth(20),
        getPropionateScreenWidth(20),
         getPropionateScreenWidth(20)),
      child: SvgPicture.asset(
        svgIcon,
        height: getPropionateScreenWidth(18),
        ),
    );
  }
}
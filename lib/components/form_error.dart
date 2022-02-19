import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../size_config.dart';

class FormError extends StatelessWidget {
  const FormError({
    Key? key,
    required this.errors,
  }) : super(key: key);

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(errors.length, (index) => FormErrorText(error: errors[index])),
    );
  }

  Row FormErrorText({required String error}) {
    return Row(
        children: [
          SvgPicture.asset("assets/icons/Error.svg",
          height: getPropionateScreenWidth(14),
          width: getPropionateScreenWidth(14),
          ),
          SizedBox(width: getPropionateScreenWidth(10),
          ),
          Text(error),
        ],
      );
  }
}

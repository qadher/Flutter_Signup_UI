// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../components.dart';

class LoginText extends StatelessWidget {
  const LoginText({
    Key? key, required this.greytext, required this.bluetext,
  }) : super(key: key);

  final String greytext;
  final String bluetext;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Text(
          greytext,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
            color: lightTextColor,
          ),
        ),
        Text(
          bluetext,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w700,
            color: purpleColor,
          ),
        ),
      ],
    );
  }
}

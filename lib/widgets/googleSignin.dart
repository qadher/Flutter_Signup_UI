// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../components.dart';

class GoogleSignin extends StatelessWidget {
  const GoogleSignin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        onPressed: () {
          // ignore: avoid_print
          print("create account clicked");
        },
        style: ButtonStyle(
          side: MaterialStateProperty.all(const BorderSide(
            color: borderColor,
          )),
          foregroundColor: MaterialStateProperty.all(darkTextColor),
          padding: MaterialStateProperty.all(
              EdgeInsets.symmetric(vertical: 14.h)),
          textStyle: MaterialStateProperty.all(
            TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset("assets/google.png"),
            SizedBox(
              width: 10.w,
            ),
            const Text("Google"),
          ],
        ),
      ),
    );
  }
}

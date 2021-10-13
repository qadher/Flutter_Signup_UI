import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_app/components.dart';
import 'package:ui_app/widgets/createAccountButton.dart';
import 'package:ui_app/widgets/getTextField.dart';
import 'package:ui_app/widgets/googleSignin.dart';
import 'package:ui_app/widgets/loginText.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 26.h),
              Text(
                "Sign Up to Mastermind",
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700,
                  color: darkTextColor,
                ),
              ),
              SizedBox(height: 2.h),
              const LoginText(
                greytext: 'Already have an account? ',
                bluetext: 'Login',
              ),
              SizedBox(height: 12.h),
              const GetTextField(hint: "Full Name"),
              SizedBox(height: 8.h),
              const GetTextField(hint: "Email"),
              SizedBox(height: 8.h),
              const GetTextField(hint: "Password"),
              SizedBox(height: 8.h),
              const GetTextField(hint: "Confirm Password"),
              SizedBox(height: 8.h),
              const CreateAccountButton(),
              SizedBox(height: 8.h),
              Row(
                children: [
                  const Expanded(flex: 1, child: Divider()),
                  SizedBox(width: 8.w),
                  Text(
                    "or Sign via",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: lightTextColor,
                    ),
                  ),
                  SizedBox(width: 8.w),
                  const Expanded(child: Divider()),
                ],
              ),
              SizedBox(height: 8.h),
              const GoogleSignin(),
              SizedBox(height: 8.h),
              const LoginText(
                greytext: 'By signing up tp Masterminds you agree to our ',
                bluetext: 'terms and conditions',
              ),
              SizedBox(height: 8.h),
            ],
          ),
        ),
      )),
    );
  }
}

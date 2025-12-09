import 'package:flutter/material.dart';
import 'package:login_page/utils/app_color.dart';
import 'package:login_page/views/reset_password/widget/reset_password_components.dart';
class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColor.black,
      body: 
     Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(),
        child:  ResetPasswordComponents()
      ),);
  }
}
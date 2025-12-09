import 'package:flutter/material.dart';
import 'package:login_page/utils/app_color.dart';
import 'package:login_page/views/login_screen/widgets/login_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    Size size = MediaQuery.of(context).size;
    
    return Scaffold(
      backgroundColor: AppColor.black,
      body: SizedBox(
        height: size.height,
        width: size.width,
        child:  LoginWidget()
      ),
    );
  }
}

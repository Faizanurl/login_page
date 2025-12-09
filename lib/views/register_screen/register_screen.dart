import 'package:flutter/material.dart';
import 'package:login_page/utils/app_color.dart';
import 'package:login_page/views/register_screen/widgets/register_components.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    Size size = MediaQuery.of(context).size;
    
    return Scaffold(
      backgroundColor: AppColor.black,
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(),
        child:  RegisterComponents()
      ),
    );
  }
}

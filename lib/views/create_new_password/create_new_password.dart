import 'package:flutter/material.dart';
import 'package:login_page/utils/app_color.dart';
import 'package:login_page/views/create_new_password/widgets/create_password_components.dart';

class CreateNewPassword extends StatelessWidget {
  const CreateNewPassword ({super.key});

  @override
  Widget build(BuildContext context) {
    
    Size size = MediaQuery.of(context).size;
    
    return Scaffold(
      backgroundColor: AppColor.black,
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(),
        child:  CreatePasswordComponents()
      ),
    );
  }
}

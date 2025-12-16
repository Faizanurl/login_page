import 'package:flutter/material.dart';
import 'package:login_page/utils/app_images.dart';

class TabletGradientRegister extends StatelessWidget {
  const TabletGradientRegister({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Positioned(
     
      left:  0,
      child: SizedBox(
        height: size.width>1024?size.height:   size.height*0.8,
        child: Image.asset(AppImages.gradient2, fit: BoxFit.fill)),
    );
  }
}

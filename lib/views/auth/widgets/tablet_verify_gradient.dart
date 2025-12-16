import 'package:flutter/material.dart';
import 'package:login_page/utils/app_images.dart';

class TabletVerifyGradient extends StatelessWidget {
  const TabletVerifyGradient({super.key});

  @override
  Widget build(BuildContext context) {
    return  Positioned(
      bottom: 0,
      right: 0,
      child: SizedBox(
        width: MediaQuery.of(context).size.width ,
        child: Image.asset(AppImages.gradient5, fit: BoxFit.fill),
      ),
    );
    
  }
}

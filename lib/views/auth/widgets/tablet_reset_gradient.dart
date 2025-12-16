

import 'package:flutter/material.dart';
import 'package:login_page/utils/app_images.dart';
class TabletResetGradient extends StatelessWidget {
  
  
  const TabletResetGradient({super.key });

  @override
  Widget build(BuildContext context) {
 Size size = MediaQuery.of(context).size;
    return Positioned(
      right: 0,
      bottom: 0,
      child: SizedBox(
              height: size.width>1024?size.height*0.8:   size.height*0.5,
                  child: Image.asset(AppImages.gradient3, fit: BoxFit.fill),
              ),
    ) ;
  }
}
import 'package:flutter/material.dart';
import 'package:login_page/utils/app_images.dart';
class TabletResetGradient extends StatelessWidget {
  
  const TabletResetGradient({super.key });

  @override
  Widget build(BuildContext context) {
    
    return Positioned(
      right: 0,
      child: SizedBox(
              height: MediaQuery.of(context).size.height,
                  child: Image.asset(AppImages.gradient3, fit: BoxFit.fill),
              ),
    ) ;
  }
}
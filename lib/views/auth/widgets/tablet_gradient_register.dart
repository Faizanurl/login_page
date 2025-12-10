import 'package:flutter/material.dart';
import 'package:login_page/utils/app_images.dart';

class TabletGradientRegister extends StatelessWidget {
  const TabletGradientRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(child: Image.asset(AppImages.gradient2, fit: BoxFit.fill));
  }
}

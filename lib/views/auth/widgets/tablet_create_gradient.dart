import 'package:flutter/material.dart';
import 'package:login_page/utils/app_images.dart';

class TabletCreateGradient extends StatelessWidget {
  const TabletCreateGradient({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.8,
        child: Image.asset(AppImages.gradient4, fit: BoxFit.fill),
      ),
    );
  }
}

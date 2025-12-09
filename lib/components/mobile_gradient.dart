import 'package:flutter/material.dart';
import 'package:login_page/utils/app_images.dart';
class MobileGradient extends StatelessWidget {
  const MobileGradient({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
                right: 0,
                top: 20,
                // ignore: avoid_unnecessary_containers
                child: Container(
                  child: Image.asset(AppImages.gradient6, fit: BoxFit.fill),
                ),
              );
  }
}
import 'package:flutter/material.dart';
import 'package:login_page/utils/app_images.dart';
class TriangleIcon extends StatelessWidget {
  const TriangleIcon({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return  Positioned(
          left:size.width<500? 50:size.width<1024?   60:50,
          top: size.height * 0.05,
          child: SizedBox(
            height: size.height * 0.02,
            child: InkWell(
              onTap: () {
           Navigator.maybePop(context);
              },
              child: Image.asset(AppImages.polygon)),
          ),
        );
  }
}
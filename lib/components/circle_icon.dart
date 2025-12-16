import 'package:flutter/material.dart';
import 'package:login_page/utils/app_images.dart';
class CircleIcon extends StatelessWidget {
  const CircleIcon({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Positioned(
          left: 20,
          top: size.height * 0.05,
          child: SizedBox(
            height: size.height * 0.02,
            child: InkWell(
             onTap: () {
  Navigator.maybePop(context);
},
              child: Image.asset(AppImages.circle)),
          ),
        );
  }
}
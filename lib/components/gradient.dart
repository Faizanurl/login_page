import 'package:flutter/material.dart';
import 'package:login_page/utils/app_images.dart';
class GradientImage extends StatelessWidget {
  const GradientImage({super.key});

  @override
  Widget build(BuildContext context) {
       Size size= MediaQuery.of(context).size;
    return Stack(children: [
          size.width>700?  Positioned(
              top: 0,
              right:  -200,
               
              child: 
              // ignore: sized_box_for_whitespace
              Container(
                height: size.height*0.7,
                child: Image.asset(AppImages.gradient1,filterQuality: FilterQuality.high,)))
                : SizedBox(),
          ],) ;
  }
}
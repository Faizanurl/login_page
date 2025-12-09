import 'package:flutter/material.dart';
class TabletGradient extends StatelessWidget {
  final String gradientimage;
  const TabletGradient({super.key ,required this.gradientimage});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
                height: size.height * 0.6,
                width: size.width,
                child: Image.asset(gradientimage, fit: BoxFit.fill),
            ) ;
  }
}
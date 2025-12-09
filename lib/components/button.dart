import 'package:flutter/material.dart';
import 'package:login_page/utils/app_color.dart';
import 'package:login_page/utils/appstyle.dart';
class Button extends StatelessWidget {
  var text ;
   Button({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return
     size.width>600?
     Container(
            width: size.width * 0.35,
      height: size.height * 0.060,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        gradient: LinearGradient(colors:  [
          AppColor.pink,AppColor.blue

        ] ),
      ),
      child: Center(child: Text(text,style: Appstyle().bold1(),)),
    ):
     Container(
            width: size.width * 0.9,
      height: size.height * 0.060,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        gradient: LinearGradient(colors:  [
          AppColor.pink,AppColor.blue

        ] ),
      ),
      child: Center(child: Text(text,style: Appstyle().bold1(),)),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:login_page/utils/app_color.dart';

class Appstyle {
  bold(){
    return TextStyle(fontSize: 20,color: AppColor.white,fontFamily: "assets/fonts/hel.ttf",fontWeight: FontWeight.bold );

  }
  
  bold1(){
    return TextStyle(fontSize: 13,color: AppColor.white,fontFamily: "assets/fonts/hel.ttf",fontWeight: FontWeight.bold );

  }

  light(){
    return TextStyle(fontFamily:"assets/fonts/hel.ttf",fontSize: 10,color: AppColor.white );
  }
   light1(){
    return TextStyle(fontFamily:"assets/fonts/hel.ttf",fontSize: 10,color: const Color.fromARGB(255, 182, 181, 181) );
  }
}
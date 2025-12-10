import 'package:flutter/material.dart';
import 'package:login_page/utils/app_color.dart';

class Appstyle {
  TextStyle bold(){
    return TextStyle(fontSize: 20,color: AppColor.white,fontFamily:"hel" ,fontWeight: FontWeight.bold );

  }
  
   TextStyle bold1(){
    return TextStyle(fontSize: 13,color: AppColor.white,fontFamily:"hel",fontWeight: FontWeight.bold );

  }

   TextStyle light(){
    return TextStyle(fontFamily:"hel",fontSize: 11,color: AppColor.white );
  }
   TextStyle light1(){
    return TextStyle(fontFamily:"hel",fontSize: 10,color: const Color.fromARGB(255, 182, 181, 181) );
  }
}


import 'package:flutter/material.dart';
import 'package:login_page/utils/app_color.dart';

class Appstyle {
  TextStyle bold(BuildContext  context){
    return TextStyle(fontSize:MediaQuery.of(context).size.width > 700? 30 :  22,color: AppColor.white,fontFamily:"hel" ,fontWeight: FontWeight.bold );

  }
  
   TextStyle bold1(BuildContext  context){
    return TextStyle(fontSize:MediaQuery.of(context).size.width>700?16: 14,color: AppColor.white,fontFamily:"hel",fontWeight: FontWeight.bold );

  }
  TextStyle smalltext(BuildContext  context){

    return TextStyle(fontSize:MediaQuery.of(context).size.width>700?16: 14,color: AppColor.white,fontFamily:"hel", );
  }

   TextStyle light(){
    return TextStyle(fontFamily:"hel",fontSize: 13,  color: AppColor.white );
  }
   TextStyle light1(){
    return TextStyle(fontFamily:"hel",fontSize: 10,color: const Color.fromARGB(255, 182, 181, 181) );
  }
}
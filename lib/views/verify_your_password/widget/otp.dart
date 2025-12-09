import'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_page/utils/app_color.dart';
import 'package:login_page/utils/appstyle.dart';
class Otp extends StatelessWidget {
  const Otp({super.key});

  @override
  Widget build(BuildContext context) {
    
    Size size = MediaQuery.of(context).size;
    var spacewidth = SizedBox(width: size.width * 0.012);
    return Form(
             child: Row(
              children: [
               SizedBox(
                height: 43,width: 36,child: TextFormField(
                  
                   onChanged: (value) {
                    if (value.length==1){
                      FocusScope.of(context).nextFocus();
                    }
                    if (value.isEmpty){
                      FocusScope.of(context).previousFocus();
                    }
                  }, decoration: InputDecoration(
                    
                    contentPadding: EdgeInsets.zero,
                    border: OutlineInputBorder(borderSide: BorderSide(color: AppColor.grey))
                    ,focusedBorder: OutlineInputBorder(borderSide: BorderSide())
                  ),
                  style: Appstyle().bold(),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,inputFormatters: [LengthLimitingTextInputFormatter(1), FilteringTextInputFormatter.digitsOnly]
                ),
              ),
              spacewidth,
              SizedBox(
                height: 43,width: 36,child: TextFormField(
                   onChanged: (value) {
                    if (value.length==1){
                      FocusScope.of(context).nextFocus();
                    }
                    if (value.isEmpty){
                      FocusScope.of(context).previousFocus();
                    }
                  }, decoration: InputDecoration(
                    contentPadding: EdgeInsets.zero,
                    border: OutlineInputBorder(borderSide: BorderSide(color: AppColor.grey))
                  ),
                  style: Appstyle().bold(),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,inputFormatters: [LengthLimitingTextInputFormatter(1), FilteringTextInputFormatter.digitsOnly]
                ),
              ),
              spacewidth,
               SizedBox(
                height: 43,width: 36,child: TextFormField(
                   onChanged: (value) {
                    if (value.length==1){
                      FocusScope.of(context).nextFocus();
                    }
                    if (value.isEmpty){
                      FocusScope.of(context).previousFocus();
                    }
                  }, decoration: InputDecoration(
                    contentPadding: EdgeInsets.zero,
                    border: OutlineInputBorder(borderSide: BorderSide(color: AppColor.grey))
                  ),
                  style: Appstyle().bold(),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,inputFormatters: [LengthLimitingTextInputFormatter(1), FilteringTextInputFormatter.digitsOnly]
                ),
              ),
              spacewidth,
               SizedBox(
                height: 43,width: 36,child: TextFormField(
                   onChanged: (value) {
                    if (value.length==1){
                      FocusScope.of(context).nextFocus();
                    }
                    if (value.isEmpty){
                      FocusScope.of(context).previousFocus();
                    }
                  }, decoration: InputDecoration(
                    contentPadding: EdgeInsets.zero,
                    border: OutlineInputBorder(borderSide: BorderSide(color: AppColor.grey))
                  ),
                  style: Appstyle().bold(),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,inputFormatters: [LengthLimitingTextInputFormatter(1), FilteringTextInputFormatter.digitsOnly]
                ),
              ),
              spacewidth,
               SizedBox(
                height: 43,width: 36,child: TextFormField(
                   onChanged: (value) {
                    if (value.length==1){
                      FocusScope.of(context).nextFocus();
                    }
                    if (value.isEmpty){
                      FocusScope.of(context).previousFocus();
                    }
                  }, decoration: InputDecoration(
                    contentPadding: EdgeInsets.zero,
                    border: OutlineInputBorder(borderSide: BorderSide(color: AppColor.grey))
                  ),
                  style: Appstyle().bold(),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,inputFormatters: [LengthLimitingTextInputFormatter(1), FilteringTextInputFormatter.digitsOnly]
                ),
              ),
              spacewidth,
               SizedBox(
                height: 43,width: 36,child: TextFormField(
                   onChanged: (value) {
                    if (value.isEmpty){
                      FocusScope.of(context).previousFocus();
                    }
                  }, decoration: InputDecoration(
                    contentPadding: EdgeInsets.zero,
                    border: OutlineInputBorder(borderSide: BorderSide(color: AppColor.grey))
                  ),
                  style: Appstyle().bold(),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,inputFormatters: [LengthLimitingTextInputFormatter(1), FilteringTextInputFormatter.digitsOnly]
                ),
              ), 
             ],),
           ) ;
  }
}
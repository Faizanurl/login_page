import 'package:flutter/material.dart';
import 'package:login_page/components/mobile_gradient.dart';
import 'package:login_page/components/tablet_gradient.dart';
import 'package:login_page/utils/app_images.dart';
import 'package:login_page/views/auth/widgets/tablet_create_gradient.dart';
import 'package:login_page/views/auth/widgets/tablet_gradient_register.dart';
import 'package:login_page/views/auth/widgets/tablet_reset_gradient.dart';
import 'package:login_page/views/auth/widgets/tablet_verify_gradient.dart';

class BgGradient {
  // ignore: strict_top_level_inference
  StatelessWidget backgroundgradient(context) {
    Size size = MediaQuery.of(context).size;
    return size.width > 500 ? TabletCreateGradient() : MobileGradient();
  }

  // ignore: strict_top_level_inference
  StatelessWidget background1gradient(context) {
    Size size = MediaQuery.of(context).size;

   return size.width > 500
        ? TabletGradient(gradientimage: AppImages.gradient1): MobileGradient();
  }

// ignore: strict_top_level_inference
StatelessWidget background2gradient(context){
  Size size = MediaQuery.of(context).size;
   return size.width > 500 ? TabletGradientRegister() : MobileGradient();
}
// ignore: strict_top_level_inference
StatelessWidget background3gradient(context){
   Size size = MediaQuery.of(context).size;
 return size.width > 500 ? TabletResetGradient() : MobileGradient();
}
// ignore: strict_top_level_inference
StatelessWidget background4gradient(context){
    Size size = MediaQuery.of(context).size;
  return size.width > 500 ? TabletVerifyGradient() : MobileGradient();
}

}

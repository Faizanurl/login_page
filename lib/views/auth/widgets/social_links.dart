import 'package:flutter/material.dart';
import 'package:login_page/components/social_login_button.dart';
import 'package:login_page/utils/app_images.dart';

class SocialLinks extends StatelessWidget {
  const SocialLinks({super.key});

  @override
  Widget build(BuildContext context) {
    
    Size size = MediaQuery.of(context).size;
    var spacewidth = SizedBox(width: size.width * 0.032);
    return  Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialLoginButton(imge: AppImages.google),
                spacewidth,
                SocialLoginButton(imge: AppImages.facebook),
                spacewidth,
                SocialLoginButton(imge: AppImages.apple),
              ],
            );
  }
}
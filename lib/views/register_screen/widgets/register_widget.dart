import 'package:flutter/material.dart';
import 'package:login_page/components/circle_icon.dart';
import 'package:login_page/components/confirm_button.dart';
import 'package:login_page/components/group1_icon_image.dart';
import 'package:login_page/components/group_icon_image.dart';
import 'package:login_page/components/mobile_gradient.dart';
import 'package:login_page/components/social_login_button.dart';
import 'package:login_page/components/triangle_icon.dart';
import 'package:login_page/utils/app_images.dart';
import 'package:login_page/utils/app_text.dart';
import 'package:login_page/views/register_screen/widgets/costom_spacer.dart';
import 'package:login_page/views/register_screen/widgets/login_fields.dart';
import 'package:login_page/views/register_screen/widgets/register_footer.dart';
import 'package:login_page/views/register_screen/widgets/tablet_gradient_register.dart';
import 'package:login_page/views/register_screen/widgets/mobile_text.dart';
import 'package:login_page/views/register_screen/widgets/tablet_text.dart';
import 'package:login_page/views/reset_password/reset_password.dart';

class RegisterWidget extends StatelessWidget {
  const RegisterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var spacewidth = SizedBox(width: size.width * 0.04);
    var spaceheigth = SizedBox(height: size.height * 0.025);
    return Stack(
      children: [
        size.width > 500 ? TabletGradientRegister() : MobileGradient(),
        CircleIcon(),
        TriangleIcon(),
        GroupIconImage(),
        Group1IconImage(),

        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: size.height * 0.15),
            size.width < 500 ? MobileText() : TabletText(),
            spaceheigth,
            LoginFields(),

            SizedBox(height: size.height * 0.03),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ResetPassword()),
                );
              },
              child: ConfirmButton(text: AppText.register),
            ),
            SizedBox(height: size.height * 0.03),
            CostomSpacer(),
            SizedBox(height: size.height * 0.03),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialLoginButton(imge: AppImages.google),
                spacewidth,
                SocialLoginButton(imge: AppImages.facebook),
                spacewidth,
                SocialLoginButton(imge: AppImages.apple),
              ],
            ),
            SizedBox(height: size.height * 0.12),
            RegisterFooter(),
          ],
        ),
      ],
    );
  }
}

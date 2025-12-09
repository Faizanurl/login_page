import 'package:flutter/material.dart';
import 'package:login_page/components/circle_icon.dart';
import 'package:login_page/components/confirm_button.dart';
import 'package:login_page/components/group1_icon_image.dart';
import 'package:login_page/components/group_icon_image.dart';
import 'package:login_page/components/mobile_gradient.dart';
import 'package:login_page/components/textfield.dart';
import 'package:login_page/components/triangle_icon.dart';
import 'package:login_page/utils/app_text.dart';
import 'package:login_page/utils/appstyle.dart';
import 'package:login_page/views/reset_password/widget/tablet_reset_gradient.dart';
import 'package:login_page/views/verify_your_password/verify_password.dart';

class ResetPasswordWidget extends StatelessWidget {
  const ResetPasswordWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var spaceheigth = SizedBox(height: size.height * 0.04);
    return Stack(
      children: [
        size.width > 500 ? TabletResetGradient() : MobileGradient(),
        CircleIcon(),
        TriangleIcon(),
        GroupIconImage(),
        Group1IconImage(),
        Positioned(
          top: size.height * 0.3,
          left: size.width > 500 ? size.width * 0.3 : size.width * 0.035,
          child: Column(
            children: [
              Text(AppText.resetpassword, style: Appstyle().bold()),
              SizedBox(height: size.height * 0.01),
              Text(
                AppText
                    .typeyourauthorisedemailaddresstoreceiveresetpasswordlink,
                style: Appstyle().light(),
              ),
              Text(AppText.passwordlink, style: Appstyle().light()),
              spaceheigth,
              CustomTextfields(label: AppText.emailaddress, eye: false),
              spaceheigth,
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => VerifyPassword()),
                  );
                },
                child: ConfirmButton(text: AppText.resetpasswordlink),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:login_page/utils/app_color.dart';
import 'package:login_page/components/circle_icon.dart';
import 'package:login_page/components/confirm_button.dart';
import 'package:login_page/components/group1_icon_image.dart';
import 'package:login_page/components/group_icon_image.dart';
import 'package:login_page/components/triangle_icon.dart';
import 'package:login_page/utils/app_routers_name.dart';
import 'package:login_page/utils/app_text.dart';
import 'package:login_page/utils/appstyle.dart';
import 'package:login_page/utils/bg_gradient.dart';
import 'package:login_page/viewmodel/login_view_model.dart';
import 'package:login_page/views/auth/widgets/otp_password.dart';
import 'package:provider/provider.dart';

class VerifyPassword extends StatelessWidget {
  const VerifyPassword({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var spaceheigth = SizedBox(height: size.height * 0.04);

    return ChangeNotifierProvider(
      create: (_) => LoginViewModel(),
      child: Scaffold(
        backgroundColor: AppColor.black,
        body: SingleChildScrollView(
          child: Container(
            height: size.height,
            width: size.width,
            decoration: BoxDecoration(),
            child: Stack(
              children: [
                BgGradient().background4gradient(context),
                CircleIcon(),
                TriangleIcon(),
                GroupIconImage(),
                Group1IconImage(),
                
                Positioned(
                  child: Center(
                    child: Consumer<LoginViewModel>(
                      builder: (context, provider, child) {
                        return Column(
                          children: [
                            SizedBox(height: size.height * 0.3),
                            
                            Text(
                              AppText.verifyyourcode,
                              style: Appstyle().bold(context),
                            ),
                            SizedBox(height: size.height * 0.01),
                            
                            size.width > 400
                                ? Text(
                                    AppText.enterthepasscodeyoujust,
                                    style: Appstyle().light(),
                                  )
                                : Column(
                                    children: [
                                      Text(
                                        AppText.enterthepass,
                                        style: Appstyle().light(),
                                      ),
                                      Text(
                                        AppText.youremailaddress,
                                        style: Appstyle().light(),
                                      ),
                                    ],
                                  ),
                            Text(
                              AppText.endingwithgmailcom,
                              style: Appstyle().light(),
                            ),
                            spaceheigth,
                            
                            OtpPassword(),
                            spaceheigth,
                        
                            InkWell(
                              onTap: () {
                               _validation(context);
                                 },
                              child: ConfirmButton(text: AppText.verify),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
 void _validation(BuildContext context){
 var provider=   context.read<LoginViewModel>();
   bool isOtpValid = provider.validateOtp();
                                
                                if (isOtpValid) {
                                  context.pushNamed(AppRoutersName.createnewpasswordroutename);
                                }
}
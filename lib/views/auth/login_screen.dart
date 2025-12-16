import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:login_page/components/custom_textfield.dart';
import 'package:login_page/viewmodel/login_view_model.dart';
import 'package:provider/provider.dart';
import 'package:login_page/components/circle_icon.dart';
import 'package:login_page/components/confirm_button.dart';
import 'package:login_page/components/group1_icon_image.dart';
import 'package:login_page/components/group_icon_image.dart';
import 'package:login_page/components/simple_textfield.dart';
import 'package:login_page/components/triangle_icon.dart';
import 'package:login_page/utils/app_color.dart';
import 'package:login_page/utils/app_routers_name.dart';
import 'package:login_page/utils/app_text.dart';
import 'package:login_page/utils/appstyle.dart';
import 'package:login_page/utils/bg_gradient.dart';
import 'package:login_page/utils/costom_spacing.dart';
import 'package:login_page/views/auth/widgets/costom_check_box.dart';
import 'package:login_page/views/auth/widgets/costom_spacer.dart';
import 'package:login_page/views/auth/widgets/auth_footers.dart';
import 'package:login_page/views/auth/widgets/social_links.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var spaceheigth = SizedBox(height: size.height * 0.025);

    return ChangeNotifierProvider(
      create: (_) => LoginViewModel(),
      child: Scaffold(
        backgroundColor: AppColor.black,
        body: SizedBox(
          height: size.height,
          width: size.width,
          child: SingleChildScrollView(
            child: Stack(
              children: [
                BgGradient().background1gradient(context),
                CircleIcon(),
                TriangleIcon(),
                GroupIconImage(),
                Group1IconImage(),

                Center(
                  child: Consumer<LoginViewModel>(
                    builder: (context, provider, child) {
                      return Column(
                        children: [
                          SizedBox(height: size.height * 0.2),
                          Text(
                            AppText.welcomebacktrailblazer,
                            style: Appstyle().bold(context),
                          ),
                          spaceheigth,
                          Text(AppText.weareexiting, style: Appstyle().light()),
                          Text(AppText.youraccount, style: Appstyle().light()),
                          spaceheigth,

                          SimpleTextfield(
                            label: AppText.usernameoremail,
                            fieldName: 'usernameoremail',
                            controller: null,
                          ),
                          spaceheigth,

                          CustomTextfields(
                            label: AppText.password,
                            eye: true,
                            fieldName: "password",
                          ),

                          SizedBox(height: size.height * 0.01),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CostomCheckBox(),
                              Text(
                                AppText.rememberme,
                                style: Appstyle().light(),
                              ),
                              CostomSpacing.space(context),
                              Text(
                                AppText.forgetpassword,
                                style: Appstyle().light(),
                              ),
                            ],
                          ),
                          SizedBox(height: size.height * 0.03),

                          InkWell(
                            onTap: () {
                              _validation(context);
                            },
                            child: ConfirmButton(text: AppText.login),
                          ),

                          SizedBox(height: size.height * 0.045),
                          CostomSpacer(),
                          SizedBox(height: size.height * 0.045),
                          SocialLinks(),
                          SizedBox(height: size.height * 0.02),
                          AuthFooters(
                            text: AppText.register,
                            navigator: AppRoutersName.registerroutename,
                          ),
                          SizedBox(height: size.height * 0.05),
                        ],
                      );
                    },
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
  void _validation( BuildContext context){
 var provider=context.read<LoginViewModel>();
  bool isUsernameValid = provider.validateField('usernameoremail');
                              bool isPasswordValid = provider.validateField('password');
                              if (!isUsernameValid || !isPasswordValid) {
                                return;
                              }  context.pushNamed(AppRoutersName.registerroutename);
}
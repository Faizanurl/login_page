import 'package:flutter/material.dart';
import 'package:login_page/utils/app_text.dart';
import 'package:login_page/utils/appstyle.dart';
class RegisterFooter extends StatelessWidget {
  const RegisterFooter({super.key});

  @override
  Widget build(BuildContext context) {
    
    Size size = MediaQuery.of(context).size;
    var spacewidth = SizedBox(width: size.width * 0.04);
    return 
     size.width < 500
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        AppText.alreadyhaveanaccount,
                        style: Appstyle().light1(),
                      ),
                      Text(AppText.login, style: Appstyle().light()),
                    ],
                  )
                : Row(
                    children: [
                      spacewidth,
                      Text(
                        AppText.alreadyhaveanaccount,
                        style: Appstyle().light1(),
                      ),
                      Text(AppText.login, style: Appstyle().light()),
                      Spacer(),
                      Text(AppText.contactsupport, style: Appstyle().light()),
                      spacewidth,
                    ],
                  )
           
    ;
  }
}
import 'package:flutter/material.dart';
import 'package:login_page/utils/app_text.dart';
import 'package:login_page/utils/appstyle.dart';
import 'package:login_page/views/register_screen/register_screen.dart';

class LoginFooters extends StatelessWidget {
  const LoginFooters({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var spacewidth = SizedBox(width: size.width * 0.02);
    return size.width < 500
        ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(AppText.donthave, style: Appstyle().light1()),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => RegisterScreen()),
                  );
                },
                child: Text(AppText.register, style: Appstyle().light()),
              ),
            ],
          )
        : Row(
            children: [
              spacewidth,
              Text(AppText.donthave, style: Appstyle().light1()),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => RegisterScreen()),
                  );
                },
                child: Text(AppText.register, style: Appstyle().light()),
              ),
              Spacer(),
              Text(AppText.contactsupport, style: Appstyle().light()),
              spacewidth,
            ],
          );
  }
}

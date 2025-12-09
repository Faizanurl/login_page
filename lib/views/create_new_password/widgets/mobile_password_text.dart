import 'package:flutter/material.dart';
import 'package:login_page/utils/app_text.dart';
import 'package:login_page/utils/appstyle.dart';

class MobilePasswordText extends StatelessWidget {
  const MobilePasswordText({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
                    children: [
                      Text(
                        AppText.typeyournewstrongpassword,
                        style: Appstyle().light(),
                      ),
                      Text(AppText.onecapitalletter, style: Appstyle().light()),
                      Text(AppText.characterminimum, style: Appstyle().light()),
                    ],
                  );
  }
}
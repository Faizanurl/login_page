import 'package:flutter/material.dart';
import 'package:login_page/utils/app_text.dart';
import 'package:login_page/utils/appstyle.dart';

class TabletPasswordText extends StatelessWidget {
  const TabletPasswordText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppText.typeyournewstrongpassword,
                        style: Appstyle().light(),
                      ),
                      Text(AppText.mustinclude, style: Appstyle().light()),

                      Text(AppText.type1, style: Appstyle().light()),
                      Text(AppText.type2, style: Appstyle().light()),
                      Text(AppText.type3, style: Appstyle().light()),
                    ],
                  );
  }
}
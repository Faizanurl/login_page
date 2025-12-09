import 'package:flutter/material.dart';
import 'package:login_page/utils/app_color.dart';
import 'package:login_page/utils/app_text.dart';
import 'package:login_page/utils/appstyle.dart';

class CostomSpacer extends StatelessWidget {
  const CostomSpacer({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 1,
                  width: size.width > 50 ? size.width * 0.17: size.width * 0.35,
                  color: AppColor.grey,
                ),
                SizedBox(width: 2),
                Text(AppText.or, style: Appstyle().light()),
                SizedBox(width: 2),
                Container(
                  height: 1,
                  width: size.width > 500? size.width * 0.17: size.width * 0.35,

                  color: AppColor.grey,
                ),
              ],
            )
;
  }
}
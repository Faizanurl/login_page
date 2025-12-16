import 'package:flutter/material.dart';
import 'package:login_page/utils/app_color.dart';

class SocialLoginButton extends StatelessWidget {
 final String imge;
  const SocialLoginButton ({super.key, required this.imge});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return 
    size.width<500?
     Container(padding:size.width>400? EdgeInsets.all(4):EdgeInsets.all(6),
      height: size.height * 0.047,
      width: size.width * 0.25,
      decoration: BoxDecoration(
        border: Border.all(color: AppColor.grey, width: 1),
        borderRadius: BorderRadius.circular(2)
      ),
    
      child: Image.asset(imge),
    ):size.width<1024?  Container(padding: EdgeInsets.all(5),
      height: size.height * 0.05,
      width: size.width * 0.18,
      decoration: BoxDecoration(
        border: Border.all(color: AppColor.grey, width: 1),
        borderRadius: BorderRadius.circular(2)
      ),
    
      child: Image.asset(imge),
    )    :
    Container(padding: EdgeInsets.symmetric(vertical: 7),
      height: size.height * 0.06,
      width: size.width * 0.12,
      decoration: BoxDecoration(
        border: Border.all(color: AppColor.grey, width: 1),
        borderRadius: BorderRadius.circular(2)
      ),
    
      child: Image.asset(imge),
    )     ;
  }
}

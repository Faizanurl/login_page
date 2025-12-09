import 'package:flutter/material.dart';
import 'package:login_page/utils/app_color.dart';

class Contain extends StatelessWidget {
  var imge;
  Contain({super.key, required this.imge});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return 
    size.width>600?
     Container(padding: EdgeInsets.symmetric(vertical: 5),
      height: size.height * 0.05,
      width: size.width * 0.08,
      decoration: BoxDecoration(
        border: Border.all(color: AppColor.grey, width: 1),
        borderRadius: BorderRadius.circular(2)
      ),
    
      child: Image.asset(imge),
    ):
    Container(padding: EdgeInsets.symmetric(vertical: 5),
      height: size.height * 0.05,
      width: size.width * 0.2,
      decoration: BoxDecoration(
        border: Border.all(color: AppColor.grey, width: 1),
        borderRadius: BorderRadius.circular(2)
      ),
    
      child: Image.asset(imge),
    );
  }
}

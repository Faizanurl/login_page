import 'package:flutter/material.dart';
import 'package:login_page/utils/app_color.dart';

class CostomCheckBox extends StatefulWidget {
  const CostomCheckBox({super.key});

  @override
  State<CostomCheckBox> createState() => _CostomCheckBoxState();
}
    bool ischecked = false;
class _CostomCheckBoxState extends State<CostomCheckBox> {
  @override
  Widget build(BuildContext context) {
   
    return  Checkbox(
                      value: ischecked,
                      focusColor: AppColor.darkblue,
                      onChanged: (value) {
                        setState(() {
                          ischecked = value!;
                        });
                      },
                    );
  }
}
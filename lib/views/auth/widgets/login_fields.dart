// import 'package:flutter/material.dart';
// import 'package:login_page/components/simple_textfield.dart';
// import 'package:login_page/components/custom_textfield.dart';
// import 'package:login_page/utils/app_text.dart';

// class LoginFields extends StatelessWidget {
//   const LoginFields({super.key,required this.usernameemail,required this.emailaddress});

//     final usernameemail;
//     final emailaddress;
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     var spaceheigth = SizedBox(height: size.height * 0.025);
    // return Column(children: [
      
    //         SimpleTextfield(label: AppText.usernameoremail,controller:usernameemail, fieldName: '' ,),
    //         spaceheigth,

    //         SimpleTextfield(label: AppText.emailaddress,controller: emailaddress, fieldName: '', ),
    //         spaceheigth,

    //         CustomTextfields(label: AppText.password, eye: true),
    //         spaceheigth,
    //         CustomTextfields(label: AppText.confirmpassword, eye: true),
    // ],);
//   }
// }
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/common/widgets/login/login_divider.dart';
import 'package:t_store/common/widgets/spacing_styles.dart';
import 'package:t_store/features/authentication/screens/login/widget/login_header.dart';
import 'package:t_store/features/authentication/screens/login/widget/loginform.dart';
import 'package:t_store/common/widgets/login/signup/social_buttons.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          
          padding:TSpacingStyles.paddingwithAppbarHeight,
          child: Column(
            children: [
              const LoginHeader(),
              // form
              const LoginForm(),

              // divider
              LoginDivider( dividerText: TTexts.orSignInWith.capitalize!,),
              const SizedBox(height: BSizes.spaceBtwSections),

              // footer

              const SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}



import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:t_store/common/widgets/login/login_divider.dart';
import 'package:t_store/common/widgets/login/signup/social_buttons.dart';
import 'package:t_store/common/widgets/login/signup/signup/widget/signup_form.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class SingupScreen extends StatelessWidget {
  const SingupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = BHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child:Padding(
          padding: const EdgeInsets.all(BSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // title
              Text(TTexts.signupTitle,style: Theme.of(context).textTheme.headlineMedium,),
              const SizedBox(height: BSizes.spaceBtwSections,),

              // form
              const SignupForm(),
              const SizedBox(height: BSizes.spaceBtwInputFields,),
              // divider
              LoginDivider(dividerText: TTexts.orSignInWith.capitalize!),
              const SizedBox(height: BSizes.spaceBtwInputFields,),

              // social buttons

              const SocialButtons()
              
            ],
          ),),
      ),
    );
  }
}


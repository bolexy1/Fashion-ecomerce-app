import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/authentication/screens/signup/verify_email.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';
class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
    
  });

  

  @override
  Widget build(BuildContext context) {
     final dark = BHelperFunctions.isDarkMode(context);
    return Form(child: Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                  labelText: TTexts.firstName,
                  prefixIcon: Icon(Iconsax.user)
                ),
              ),
            ),
            const SizedBox(width: BSizes.spaceBtwInputFields,),
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                  labelText: TTexts.lastName,
                  prefixIcon: Icon(Iconsax.user)
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: BSizes.spaceBtwInputFields,),
        // username
    
        TextFormField(
                expands: false,
                decoration: const InputDecoration(
                  labelText: TTexts.username,
                  prefixIcon: Icon(Iconsax.user_edit)
                ),
              ),                      
             const SizedBox(height: BSizes.spaceBtwInputFields,),
    
              // email
              TextFormField(
                expands: false,
                decoration: const InputDecoration(
                  labelText: TTexts.email,
                  prefixIcon: Icon(Iconsax.direct)
                ),
              ),                       
             const SizedBox(height: BSizes.spaceBtwInputFields,),
    
              // phone number
              TextFormField(
                expands: false,
                decoration: const InputDecoration(
                  labelText: TTexts.phoneNo,
                  prefixIcon: Icon(Iconsax.call)
                ),
              ),                       
             const SizedBox(height: BSizes.spaceBtwInputFields,),
              // password
              TextFormField(
                expands: false,
                decoration: const InputDecoration(
                  labelText: TTexts.password,
                  prefixIcon: Icon(Iconsax.password_check),
                  suffixIcon: Icon(Iconsax.eye_slash)
                ),
              ),                      
             const SizedBox(height: BSizes.spaceBtwInputFields,),
    
            //  check box
            Row(
              children: [
                SizedBox(width:24,height: 24, child: Checkbox(value: true, onChanged: (value){})),
                const SizedBox(width:5,),
                Text.rich(TextSpan(children: [
                  TextSpan(text: '${TTexts.iAgreeTo}  ', style: Theme.of(context).textTheme.bodySmall ),
                  TextSpan(text: TTexts.privacyPolicy, style: Theme.of(context).textTheme.bodySmall!.apply(
                    color: dark? BColors.white : BColors.dark,
                    decoration: TextDecoration.underline,
                    decorationColor: dark? BColors.white : BColors.dark,
                  ) ),
    
                   TextSpan(text: '${TTexts.and} ', style: Theme.of(context).textTheme.bodySmall ),
                   TextSpan(text: TTexts.termsOfUse, style: Theme.of(context).textTheme.bodySmall!.apply(
                    color: dark? BColors.white : BColors.dark,
                    decoration: TextDecoration.underline,
                    decorationColor: dark? BColors.white : BColors.dark,
                  ) ),
                ]))
              ],
            ),
            const SizedBox(height: BSizes.spaceBtwInputFields,),
            // signup button
    
            SizedBox(width: double.infinity, child: ElevatedButton(onPressed: ()=>Get.to(()=> const VerifyEmail()), child: const Text(TTexts.createAccount)),),
    
              
    
      ],
    ));
  }
}
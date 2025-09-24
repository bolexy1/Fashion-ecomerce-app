import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/authentication/controllers/signup/signup_controller.dart';
import 'package:t_store/features/authentication/screens/signup/verify_email.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';
import 'package:t_store/utils/validators/validation.dart';
class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
    
  });

  

  @override
  Widget build(BuildContext context) {
     final dark = BHelperFunctions.isDarkMode(context);
     final controller = Get.put(SignupController());
    return Form(
      key: controller.signupFormKey,
      child: Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextFormField(
                controller: controller.firstName,
                validator: (value)=> TValidator.validateEmptyText('First name', value),
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
                controller: controller.lastName,
                validator: (value)=> TValidator.validateEmptyText('Last name', value),
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
              controller: controller.username,
              validator: (value)=> TValidator.validateEmptyText('User name', value),
                expands: false,
                decoration: const InputDecoration(
                  labelText: TTexts.username,
                  prefixIcon: Icon(Iconsax.user_edit)
                ),
              ),                      
             const SizedBox(height: BSizes.spaceBtwInputFields,),
    
              // email
              TextFormField(
                controller: controller.email,
                validator: (value)=> TValidator.validateEmail(value),
                expands: false,
                decoration: const InputDecoration(
                  labelText: TTexts.email,
                  prefixIcon: Icon(Iconsax.direct)
                ),
              ),                       
             const SizedBox(height: BSizes.spaceBtwInputFields,),
    
              // phone number
              TextFormField(
                controller: controller.phoneNumber,
                validator: (value)=> TValidator.validatePhoneNumber(value),
                expands: false,
                decoration: const InputDecoration(
                  labelText: TTexts.phoneNo,
                  prefixIcon: Icon(Iconsax.call)
                ),
              ),                       
             const SizedBox(height: BSizes.spaceBtwInputFields,),

              // password
              Obx(
                ()=> TextFormField(
                  controller: controller.password,
                  validator: (value)=> TValidator.validatePassword(value),
                  expands: false,
                  obscureText: controller.hidePassword.value,
                  decoration: InputDecoration(
                    labelText: TTexts.password,
                    prefixIcon: const Icon(Iconsax.password_check),
                    suffixIcon: IconButton( 
                      onPressed: () => controller.hidePassword.value = !controller.hidePassword.value, 
                      icon:  Icon(controller.hidePassword.value ? Iconsax.eye_slash : Iconsax.eye,),)
                  ),
                ),
              ),                      
             const SizedBox(height: BSizes.spaceBtwInputFields,),
    
            //  check box
            Row(
              children: [
                SizedBox(width:24,height: 24, child: Obx(( ) => Checkbox(value: controller.privacyPolicy.value, onChanged: (value)=> controller.privacyPolicy.value =!controller.privacyPolicy.value))),
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
    
            SizedBox(width: double.infinity, child: ElevatedButton(onPressed: ()=> controller.signup(), child: const Text(TTexts.createAccount)),),
    
              
    
      ],
    ));
  }
}
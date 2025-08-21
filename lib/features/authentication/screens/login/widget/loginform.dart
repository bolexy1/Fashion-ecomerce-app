import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:t_store/features/authentication/screens/signup/singup.dart';
import 'package:t_store/navigation_menu.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:get/get.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(child: Padding(
      padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
      child: Column(
        children: [
          TextFormField(
            decoration:InputDecoration(
              prefixIcon: Icon(Iconsax.direct_right), labelText: TTexts.email,  
            ) ,
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields,),
          TextFormField(
            decoration:InputDecoration(
              prefixIcon: Icon(Iconsax.password_check), labelText: TTexts.password, suffixIcon: Icon(Iconsax.eye_slash) 
            ) ,
          ),
           const SizedBox(height: TSizes.spaceBtwInputFields/2,),
      
          //  remember me and forget password
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // remember me
              Row(children: [
                Checkbox(value: true, onChanged: (value){}),
                const Text(TTexts.rememberMe),
              ],),
      
              // forget password
              TextButton(onPressed: () => Get.to(()=> const ForgetPassword()), child: const Text(TTexts.forgetPassword),)
            ],
          ),
          const SizedBox(height: TSizes.spaceBtwSections),
          // sign in button
          SizedBox(width:double.infinity, child: ElevatedButton(onPressed: ()=>Get.to(()=> const NavigationMenu()), child: const Text(TTexts.signIn),)),
          const SizedBox(height: TSizes.spaceBtwItems),
      
          // create Account button
          SizedBox(width:double.infinity, child: ElevatedButton(onPressed: ()=>Get.to(()=> const SingupScreen()), child: const Text(TTexts.createAccount),)),
          
        ],
      ),
    ));
  }
}


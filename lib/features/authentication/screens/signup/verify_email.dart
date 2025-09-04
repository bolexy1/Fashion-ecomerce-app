import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/success_screen/success_screen.dart';
import 'package:t_store/features/authentication/screens/login/login.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:get/get.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class VerifyEmail extends StatelessWidget {
  const VerifyEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [          
          IconButton(onPressed: ()=> Get.offAll(()=>const LoginScreen()), icon: const Icon(CupertinoIcons.clear)),
        ],
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(BSizes.defaultSpace),
          child: Column(
            children: [
              // image
              Image(
                image: const AssetImage(TImages.deliveredEmailIllustration), width: BHelperFunctions.screenWidth()*0.6),
               const SizedBox(height: BSizes.spaceBtwSections,),


              // Title & subtitle
              Text(TTexts.confirmEmail, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
              const SizedBox(height: BSizes.spaceBtwItems,),
              Text("Bolexy1@gmail.com", style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center,),
              const SizedBox(height: BSizes.spaceBtwItems,),
              Text(TTexts.confirmEmailSubTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center,),
              const SizedBox(height: BSizes.spaceBtwSections,),

              // buttons
              SizedBox(width: double.infinity, child: ElevatedButton(onPressed: ()=>Get.to(()=> SuccessScreen(
                images: TImages.deliveredEmailIllustration,
               title: TTexts.yourAccountCreatedTitle, 
               subtitle: TTexts.yourAccountCreatedSubTitle,
                onPressed: () => Get.to(()=> const LoginScreen()))), child: const Text(TTexts.tContinue))),
              const SizedBox(height: BSizes.spaceBtwItems,),
              SizedBox(width: double.infinity, child: TextButton(onPressed: (){}, child: const Text(TTexts.resendEmail)),),

            ],
          ),),
      ),
    );
  }
}
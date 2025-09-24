
import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:t_store/common/widgets/success_screen/success_screen.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/popups/loaders.dart';

import '../../../../data/repositories/authentication/authentication_repository.dart';

class VerifyEmailController extends GetxController{
  static VerifyEmailController get instance => Get.find();


// send email whenever verify screen appears & set timer for auto redirect
  @override
  void onInit(){
    sendEmailVerification();
    setTimerForAutoRedirect();
    super.onInit();
  }

  //  send email verification link
  sendEmailVerification() async{
    try {
      await AuthenticationRepository.instance.sendEmailVerification();
      TLoaders.successSnackBar(title: 'Email sent', message: 'Please check your inbox and verify your email');
      
    } catch (e) {
      TLoaders.errorSnackBar(title: 'oh Snap!', message: 3.toString());
      
    }
  }

  // timer to automatically redirect on email verification
  setTimerForAutoRedirect(){
    Timer.periodic(const Duration(seconds: 1), (timer)async{
     await FirebaseAuth.instance.currentUser?.reload();
     final user = FirebaseAuth.instance.currentUser;
     if(user?.emailVerified ?? false){
      timer.cancel();
      Get.off(
        ()=> SuccessScreen(
          images: BImages.successfullyRegisterAnimation, 
          title: TTexts.yourAccountCreatedTitle, 
          subtitle: TTexts.yourAccountCreatedSubTitle, 
          onPressed: ()=> AuthenticationRepository.instance.screenRedirect(),
          )
      );

     }
     });
  }

  // manually check if email verified
  checkEmailVerificationStatus() async{
    final currentUser = FirebaseAuth.instance.currentUser;
    if(currentUser != null && currentUser.emailVerified){
      Get.off(
        ()=> SuccessScreen(
          images: BImages.successfullyRegisterAnimation, 
          title: TTexts.yourAccountCreatedTitle, 
          subtitle: TTexts.yourAccountCreatedSubTitle, 
          onPressed: ()=> AuthenticationRepository.instance.screenRedirect(),
          )
      );

    }
  }
}
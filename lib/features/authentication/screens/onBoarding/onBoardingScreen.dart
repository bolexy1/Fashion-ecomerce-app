import 'package:flutter/material.dart';
import 'package:t_store/features/authentication/controllers/onboarding_controller.dart';
import 'package:t_store/features/authentication/screens/onBoarding/widget/onboarding_dot_indicator.dart';
import 'package:t_store/features/authentication/screens/onBoarding/widget/onboarding_nextbotton.dart';
import 'package:t_store/features/authentication/screens/onBoarding/widget/onboarding_page.dart';
import 'package:t_store/features/authentication/screens/onBoarding/widget/onboarding_skp.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:get/get.dart';

class Onboardingscreen extends StatelessWidget {
  const Onboardingscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());
    return  Scaffold(
      body: Stack(
        children: [
          // horizontal scrollable pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children:const  [
              OnboardingPage(image: TImages.onBoardingImage1, subtitle: TTexts.onBoardingSubTitle1, title: TTexts.onBoardingTitle1,),

              OnboardingPage(image: TImages.onBoardingImage2, subtitle: TTexts.onBoardingSubTitle2, title: TTexts.onBoardingTitle2,),

              OnboardingPage(image: TImages.onBoardingImage3, subtitle: TTexts.onBoardingSubTitle3, title: TTexts.onBoardingTitle3,)

            ],
          ),

           // skip button
         const onboardingSkip(),       


          // Dot Navigation SmoothPageIndecator
          
          const onBoardingDotNavigation(),


          // Circular Button

          onboardingNextBotton()
        ],
      ),
    );
  }
}




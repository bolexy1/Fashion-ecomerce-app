import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:t_store/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/device/device_utility.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class onBoardingDotNavigation extends StatelessWidget {
  const onBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    final dark = BHelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: BDeviceUtils.getBottomNavigationBarHeight() +25,
      left: BSizes.defaultSpace,
      
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick ,
         count:3,
      effect:  ExpandingDotsEffect(activeDotColor: dark ?BColors.light : BColors.dark , dotHeight: 6),
      ));
  }
}




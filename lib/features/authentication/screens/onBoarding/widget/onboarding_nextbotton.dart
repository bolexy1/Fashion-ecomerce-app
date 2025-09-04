import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/authentication/controllers/onboarding_controller.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/device/device_utility.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class onboardingNextBotton extends StatelessWidget {
  const onboardingNextBotton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark =BHelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: BDeviceUtils.getBottomNavigationBarHeight(),
      right: BSizes.defaultSpace,
      child: ElevatedButton(onPressed: ()=> OnboardingController.instance.nextPage(),
      style: ElevatedButton.styleFrom(shape: const CircleBorder(), backgroundColor:dark?  BColors.primary: Colors.black  ),
       child: const Icon(Iconsax.arrow_right_1)),);
  }
}
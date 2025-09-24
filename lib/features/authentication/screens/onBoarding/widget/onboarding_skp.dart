import 'package:flutter/material.dart';
import 'package:t_store/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/device/device_utility.dart';

class onboardingSkip extends StatelessWidget {
  const onboardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: BDeviceUtils.getAppBarHeight(),
      right:BSizes.defaultSpace ,
      child: TextButton(onPressed: ()=> OnboardingController.instance.skipPage(), child: const Text("skip"))
      
      );
  }
}
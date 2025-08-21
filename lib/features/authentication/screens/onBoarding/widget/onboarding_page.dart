import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({
    super.key, required this.image, required this.subtitle, required this.title
  });

  final String image, title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(TSizes.defaultSpace),
      child: Column(
        children: [
          Image(
            width: THelperFunctions.screenWidth()*0.8,
            height: THelperFunctions.screenHeight()*0.6,
            image: AssetImage(image)),
            Text(title, style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
              // ignore: prefer_const_constructors
              const SizedBox(height: TSizes.spaceBtwItems),
            Text(subtitle, style: Theme.of(context).textTheme.bodyMedium,textAlign: TextAlign.center,),
      
            
        ],
      ),
    );
  }
}
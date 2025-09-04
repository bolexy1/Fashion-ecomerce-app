import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/spacing_styles.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.images, required this.title, required this.subtitle, required this.onPressed});

  final String images, title, subtitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyles.paddingwithAppbarHeight*2,
          child: Column(
            children: [
              Image(
                image:  AssetImage(images), width: BHelperFunctions.screenWidth()*0.6),
               const SizedBox(height: BSizes.spaceBtwSections,),


              // Title & subtitle
              Text(title, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
              const SizedBox(height: BSizes.spaceBtwItems,),       
              Text(subtitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center,),
              const SizedBox(height: BSizes.spaceBtwSections,),

              SizedBox(width: double.infinity, child: ElevatedButton(onPressed: onPressed, child: const Text(TTexts.tContinue)),),
            ],
          ),),
      ),
    );
  }
}
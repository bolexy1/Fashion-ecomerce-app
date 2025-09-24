import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
class SocialButtons extends StatelessWidget {
  const SocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: BColors.grey,),
            borderRadius: BorderRadius.circular(100)
          ),
          child: IconButton(onPressed: (){}, 
          icon: const Image(
            width: BSizes.iconMd,
            height: BSizes.iconMd,
            image: AssetImage(BImages.google))),
        ),
        const SizedBox(width: BSizes.spaceBtwItems),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: BColors.grey,),
            borderRadius: BorderRadius.circular(100)
          ),
          child: IconButton(onPressed: (){}, 
          icon: const Image(
            width: BSizes.iconMd,
            height: BSizes.iconMd,
            image: AssetImage(BImages.facebook))),
        ),
    
      ],
    );
  }
}


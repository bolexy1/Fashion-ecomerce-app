import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/icons/circular_icon.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class BProductQuantitywithAddandRemove extends StatelessWidget {
  const BProductQuantitywithAddandRemove({
    super.key,
    
  });

 

  @override
  Widget build(BuildContext context) {
     final  dark = BHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        BCirclarIcon(icon: Iconsax.minus,
        width: 32,
        height: 32,
        size: TSizes.md,
        color: dark ? TColors.white:TColors.black,
        backgroundColor: dark ? TColors.darkerGrey:TColors.light ,
        ),
        const SizedBox(width: TSizes.spaceBtwItems,),
       Text('2', style: Theme.of(context).textTheme.titleSmall,),
       const SizedBox(width: TSizes.spaceBtwItems,),
    
    const BCirclarIcon(icon: Iconsax.add,
    width: 32,
    height: 32,
    size: TSizes.md,
    color: TColors.white,
    backgroundColor: TColors.primary ,
    ),
      ],
    );
  }
}


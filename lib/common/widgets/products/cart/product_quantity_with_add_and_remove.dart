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
        size: BSizes.md,
        color: dark ? BColors.white:BColors.black,
        backgroundColor: dark ? BColors.darkerGrey:BColors.light ,
        ),
        const SizedBox(width: BSizes.spaceBtwItems,),
       Text('2', style: Theme.of(context).textTheme.titleSmall,),
       const SizedBox(width: BSizes.spaceBtwItems,),
    
    const BCirclarIcon(icon: Iconsax.add,
    width: 32,
    height: 32,
    size: BSizes.md,
    color: BColors.white,
    backgroundColor: BColors.primary ,
    ),
      ],
    );
  }
}


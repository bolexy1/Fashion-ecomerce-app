import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/icons/circular_icon.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class BBottomAddToCart extends StatelessWidget {
  const BBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = BHelperFunctions.isDarkMode(context);
    return  Container(
      padding: const EdgeInsets.symmetric(horizontal: BSizes.defaultSpace, vertical: BSizes.defaultSpace/2),
      decoration: BoxDecoration(
        color: dark ? BColors.darkerGrey : BColors.light,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(BSizes.cardRadiusLg),
          topRight: Radius.circular(BSizes.cardRadiusLg)
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
             const BCirclarIcon(icon: Iconsax.minus,
              backgroundColor: BColors.darkGrey,
              width: 40,
              height: 40,
              color: BColors.white,
              ),
              const SizedBox(width: BSizes.spaceBtwItems,),
              Text('2', style: Theme.of(context).textTheme.titleSmall,),
              const SizedBox(width:  BSizes.spaceBtwItems,),
              const BCirclarIcon(icon: Iconsax.add,
              backgroundColor: BColors.black,
              width: 40,
              height: 40,
              color: BColors.white,
              ),

            ],
          ),
          ElevatedButton(
            onPressed: (){},
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(BSizes.md),
              backgroundColor: BColors.black,
              side: const BorderSide(color: BColors.black)
            ),
           child: const Text('Add to cart'))
        ],
      ),
    );
  }
}
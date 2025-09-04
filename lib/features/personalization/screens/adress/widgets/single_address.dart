import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class BSingleAddress extends StatelessWidget {
  const BSingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = BHelperFunctions.isDarkMode(context);
    return BRoundedContainer(
      padding: const EdgeInsets.all(TSizes.md) ,
      width: double.infinity,
      showBorder: true,
      backgroundColor: selectedAddress ? TColors.primary.withOpacity(0.5):Colors.transparent,
      borderColor: selectedAddress? Colors.transparent : dark ?TColors.darkerGrey : Colors.grey,
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Stack(children: [
        Positioned(
          right: 5,
          top: 0,
          child: Icon(
            selectedAddress ?Iconsax.tick_circle5 : null, 
            color: selectedAddress 
            ? dark 
            ? TColors.light : TColors.dark.withOpacity(0.6) :null,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Text('Temidayo ',
             maxLines: 1, 
             overflow: TextOverflow.ellipsis,
             style: Theme.of(context).textTheme.titleLarge,),
             const SizedBox(height: TSizes.sm /2,),
            const Text('07053024649',
             maxLines: 1, 
             overflow: TextOverflow.ellipsis,),
             const SizedBox(height: TSizes.sm /2,),
            const Text('odk junction, off isebo alakia Road, ibadan, Oyo state.',
            softWrap: true,
            ),
            const SizedBox(height: TSizes.sm /2,),
            
          ],
        )
      ],),
                   
                );
  }
}
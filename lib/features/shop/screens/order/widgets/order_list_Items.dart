import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class BOrderListItems extends StatelessWidget {
  const BOrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = BHelperFunctions.isDarkMode(context);
    return ListView.separated(
      itemCount: 5,
      shrinkWrap: true,
      separatorBuilder: (_, __)=> const SizedBox(height: BSizes.spaceBtwItems,),
      itemBuilder: (_, index)=> BRoundedContainer(
        showBorder: true,
        padding: const EdgeInsets.all(BSizes.md),
        backgroundColor:  dark ? BColors.dark : BColors.light,
        child:  Column(        
          mainAxisSize: MainAxisSize.min,
          children: [
            // row 1
            Row(
              children: [
                
                // 1 icon
                const Icon(Iconsax.ship),
                const SizedBox(width: BSizes.spaceBtwItems/2,),
      
                // status
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Processing',
                      style: Theme.of(context).textTheme.bodyLarge!.apply(color: BColors.primary, fontWeightDelta: 1),
                      ),
                      Text('03 Sept 2025',
                      style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ],
                  ),
                ),
      
                // 3 icon
                IconButton(onPressed: (){}, icon: const Icon(Iconsax.arrow_right_34, size: BSizes.iconSm,))
      
              ],
            ),
            const SizedBox(height: BSizes.spaceBtwItems,),
            // row 2
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      
                      // 1 icon
                      const Icon(Iconsax.tag),
                      const SizedBox(width: BSizes.spaceBtwItems/2,),
                  
                      // status
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Order',
                            style: Theme.of(context).textTheme.labelMedium,
                            ),
                            Text('#[256f2]',
                            style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ],
                        ),
                      ),               
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      
                      // 1 icon
                      const Icon(Iconsax.calendar),
                      const SizedBox(width: BSizes.spaceBtwItems/2,),
                  
                      // status
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('shipping Date',
                            style: Theme.of(context).textTheme.labelMedium,
                            ),
                            Text('24 sept 2025',
                            style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ],
                        ),
                      ),               
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
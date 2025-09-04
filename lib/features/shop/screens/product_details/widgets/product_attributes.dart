import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/chips/choice_chio.dart';
import 'package:t_store/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:t_store/common/widgets/products/product_price/product_price_text.dart';
import 'package:t_store/common/widgets/text/product_title_text.dart';
import 'package:t_store/common/widgets/text/section_heading.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class BProductAttributes extends StatelessWidget {
  const BProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = BHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        // selected attribute pricing
        BRoundedContainer(
          padding: const EdgeInsets.all(BSizes.md),
          backgroundColor: dark? BColors.darkerGrey: BColors.grey,
          child: Column(
            
            
            children: [
              // title, price and  stock  status
              Row(
                children: [
                  const BSectionHeading(title: 'Variation', showActionButton: false,),
                  const SizedBox(width: BSizes.spaceBtwItems,),
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                         const BProductTitleText(title: 'price : ', smallSize: true,),
 
                          
                          //  actual price
                            Text('\$25', style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),),
                       const SizedBox(width: BSizes.spaceBtwItems,),
                      // sale price
                      const BProductPriceText(price: '20')
                        ],
                      ),

                      // Stock

                        Row(
                    children: [
                      const BProductTitleText(title: 'Stock : ', smallSize: true,),
          
                            
                       Text('In Stock', style: Theme.of(context).textTheme.titleMedium,)
                    ],
                  )
                    ],
                  ),
                  
                ],
              ),
              // variation Description
              const BProductTitleText(
                title: 'This is the Description of the Product and it can go upto max 4 lines', smallSize: true, maxLines: 4,)
            ],
          ) ,
        ),
        const SizedBox(height: BSizes.spaceBtwItems,),

        // attributes
         Column(
          crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       const BSectionHeading(title: 'Colors', showActionButton: false,),
      const SizedBox(height: BSizes.spaceBtwItems/2,),
         Wrap(
          spacing: 8,
          children: [
         BChoiceChip(text: 'Green', selected: true, onSelected: (value){},),
         BChoiceChip(text: 'Yellow', selected: false,onSelected: (value){}),
         BChoiceChip(text: 'Red', selected: true,onSelected: (value){}),
        
          ],
         )

      ]
         ),
           Column(
        crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       const BSectionHeading(title: 'Sizes'),
       const SizedBox(height: BSizes.spaceBtwItems/2,),
         Wrap(
          spacing: 8,
          children: [
            BChoiceChip(text: 'EU 34', selected: true,onSelected: (value){}),
         BChoiceChip(text: 'EU 36', selected: false,onSelected: (value){}),
         BChoiceChip(text: 'EU 38', selected: true,onSelected: (value){}),
         

          ],
         )
      ]
         ),
      ],
    );
  }
}


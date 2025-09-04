import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:t_store/common/widgets/images/B_Circular_image.dart';
import 'package:t_store/common/widgets/products/product_price/product_price_text.dart';
import 'package:t_store/common/widgets/text/brand_title_text.dart';
import 'package:t_store/common/widgets/text/product_title_text.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/enums.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class BProductMetaData extends StatelessWidget {
  const BProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = BHelperFunctions.isDarkMode(context);
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // price & sale price
        Row(
          children: [
            // sale tag
            BRoundedContainer(
                      radius: BSizes.md,
                      // ignore: deprecated_member_use
                      backgroundColor: BColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(horizontal: BSizes.sm, vertical:BSizes.xs, ),
                      child: Text("25%", style: Theme.of(context).textTheme.labelLarge!.apply(color: BColors.black)),
                    ),
                    const SizedBox(width: BSizes.spaceBtwItems,),
                    // price
                    Text('\$250', style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),),
                    const SizedBox(width: BSizes.spaceBtwItems,),
                   const BProductPriceText(price: '175', isLarge: true,)                            

          ],
        ),
        const SizedBox(height: BSizes.spaceBtwItems/1.5,),

        // Title
        const BProductTitleText(title: 'Green Nike Sport Shirt'),
        const SizedBox(height: BSizes.spaceBtwItems/1.5,),
         
        //  stack status
        Row(
          children: [
            const BProductTitleText(title: 'Status'),
             const SizedBox(width: BSizes.spaceBtwItems/1.5,),
            Text('In Stock',style: Theme.of(context).textTheme.titleMedium,),
          ],
        ),
        
        const SizedBox(height: BSizes.spaceBtwItems,),
         

        // brand
       Row(
         children: [
          BCircularImage(
            image: TImages.cosmeticsIcon,
            width: 32,
            height: 32,
            overlayColor: dark ? BColors.white : BColors.black,),
           const BBrandTitleText(title:'Nike', brandTextSize: TexBSizes.medium, ),
         ],
       )

      ],
    );
  }
}
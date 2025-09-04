import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/styles/shadows.dart';
import 'package:t_store/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:t_store/common/widgets/icons/circular_icon.dart';
import 'package:t_store/common/widgets/images/rounded_images.dart';
import 'package:t_store/common/widgets/products/product_price/product_price_text.dart';
import 'package:t_store/common/widgets/text/b_brand_title_text_with_verified_icon.dart';
import 'package:t_store/common/widgets/text/product_title_text.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class BProductCarHorizontal extends StatelessWidget {
  const BProductCarHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = BHelperFunctions.isDarkMode(context);
    return Container(
         width: 310,
        padding: const EdgeInsets.all(1),      
        decoration: BoxDecoration(          
          borderRadius: BorderRadius.circular(BSizes.productImageRadius),
          color: dark?BColors.darkerGrey : BColors.softGrey,
        ),
        child: Row(
          children: [
            // thumbnail
            BRoundedContainer(
              height: 120,
              padding: const EdgeInsets.all(BSizes.sm),
              backgroundColor: dark ? BColors.dark: BColors.light,
              child:  Stack(
                children: [
                  // Thumbnail image
                  const SizedBox(
                    height: 120,
                    width: 120,
                    child: BRoundedImage(image: TImages.productImage1, applyImageRadius: true,)
                    ),

                     Positioned(
                    top: 12,
                    child: BRoundedContainer(
                      radius: BSizes.md,
                      // ignore: deprecated_member_use
                      backgroundColor: BColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(horizontal: BSizes.sm, vertical:BSizes.xs, ),
                      child: Text("25%", style: Theme.of(context).textTheme.labelLarge!.apply(color: BColors.black)),
                    ),
                  ),
      
                  // favorite icon button
                 const  Positioned(
                    top: 0,
                    right: 0,
                    child:  BCirclarIcon(icon: Iconsax.heart5, color: Colors.red ,)),
                    
                ],
              ),
            ),

            // details
            SizedBox(
              width: 172,
              child: Padding(
                padding: const EdgeInsets.only(top: BSizes.sm, left: BSizes.sm),
                child: Column(
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BProductTitleText(title: 'Green nike half Sleeves shirt', smallSize: true,),
                        SizedBox(height: BSizes.spaceBtwItems/2,),
                        BBrandTitleWithVerifiedIcon(title: 'Nike')
                      ],
                    ),

                    const Spacer(),
                
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // pricing
                          const Flexible(child: BProductPriceText(price: '256.0')),

                          // add to cart
                          Container(
                                decoration: const BoxDecoration(
                                  color: BColors.dark,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(BSizes.cardRadiusMd),
                                    bottomRight:  Radius.circular(BSizes.productImageRadius),
                                  )
                                ),
                                child: const SizedBox(
                                   width: BSizes.iconLg*1.2,
                                  height:BSizes.iconLg*1.2 ,
                                  child:  Center(child: Icon(Iconsax.add, color: BColors.white,))
                                  ),
                              ),
                        ],
                      )
                  ],
                ),
              ),
            )
          ],
        ),);
  }
}
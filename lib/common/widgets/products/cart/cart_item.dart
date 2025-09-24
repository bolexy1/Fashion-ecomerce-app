import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/images/rounded_images.dart';
import 'package:t_store/common/widgets/text/b_brand_title_text_with_verified_icon.dart';
import 'package:t_store/common/widgets/text/product_title_text.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class BCartItem extends StatelessWidget {
  const BCartItem({
    super.key,
    
  });

  

  @override
  Widget build(BuildContext context) {
    final dark =BHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        // image
        BRoundedImage(
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(BSizes.sm),
          backgroundColor: dark? BColors.darkerGrey:BColors.light ,
          image: BImages.productImage1,
          ),
          const SizedBox(width: BSizes.spaceBtwItems,),
    
          // title price and size
    
           Expanded(
             child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const BBrandTitleWithVerifiedIcon(title: 'Nike' ),
                const Flexible(child: BProductTitleText(title: 'Black Sport shoes ', maxLines: 1,)),
                // Attributes
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(text: 'Color', style: Theme.of(context).textTheme.bodySmall ),
                      TextSpan(text: 'Green', style: Theme.of(context).textTheme.bodySmall ),
                      TextSpan(text: 'Size', style: Theme.of(context).textTheme.bodySmall ),
                      TextSpan(text: 'Uk 08', style: Theme.of(context).textTheme.bodySmall ),
                    ]
                  )
                )
              ],
                                     ),
           )
      ],
    );
  }
}
import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:t_store/common/widgets/images/B_Circular_image.dart';
import 'package:t_store/common/widgets/text/b_brand_title_text_with_verified_icon.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/enums.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class BBrandCard extends StatelessWidget {
  const BBrandCard({
    super.key, required this.showBoarder, this.onTap,
   
  });

  final bool showBoarder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final  isDark = BHelperFunctions.isDarkMode(context);
    return GestureDetector(
    onTap: onTap,
    child: BRoundedContainer(
      padding: const EdgeInsets.all(BSizes.sm),
      showBorder: showBoarder,
      backgroundColor: Colors.transparent,
      child: Row(
        children: [
          // icon
          Flexible(
            child: BCircularImage(image: BImages.clothIcon,backgroundColor: Colors.transparent, isNetworkImage: false, overlayColor: isDark ? BColors.white:BColors.black,
            
            ),
          ),
          const SizedBox(width: BSizes.spaceBtwItems/2,),
    
          // text
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const BBrandTitleWithVerifiedIcon(title: 'Nike', brandTextSize: TexBSizes.large,),  
                Text("256 products with asjbsd ",
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.labelMedium)
              ],
            ),
          )
           
        ],
      ),
    ),
                    );
  }
}


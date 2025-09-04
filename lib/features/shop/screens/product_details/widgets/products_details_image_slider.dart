import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:t_store/common/widgets/icons/circular_icon.dart';
import 'package:t_store/common/widgets/images/rounded_images.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class BProductsImageSlider extends StatelessWidget {
  const BProductsImageSlider({
    super.key,
   
  });

  

  @override
  Widget build(BuildContext context) {
    final isDark = BHelperFunctions.isDarkMode(context);
    return BCurvedEdgesWidget(
      child: Container(
        color: isDark ? TColors.darkerGrey:TColors.light,
        child: Stack(
          children: [
            // image 
          const SizedBox(height: 400, 
          child: Padding(
            padding: const EdgeInsets.all(TSizes.productImageRadius *2),
            child: Center(child: Image(image: AssetImage(TImages.productImage1))),
          )
          ),
    
          // image slider
          Positioned(
            bottom: 30,
            right: 0,
            left: TSizes.defaultSpace,
            child: SizedBox(
              height: 80,
              child: ListView.separated( 
                separatorBuilder: (_, __)=>const SizedBox(width: TSizes.spaceBtwItems,), 
                scrollDirection: Axis.horizontal, 
                physics:const AlwaysScrollableScrollPhysics(), 
                shrinkWrap: true, 
                itemCount: 4,
                itemBuilder: (_, index)
              =>  BRoundedImage(
                width:80 ,         
                backgroundColor: isDark ? TColors.dark : TColors.white,   
                border: Border.all(color: TColors.primary), 
                padding: const EdgeInsets.all(TSizes.sm),       
                image: TImages.productImage3) ,),
            ),
          ),
    
          // appBar
    
          const BAppbar(
            showBackArrow: true,
            actions: [
              BCirclarIcon(icon: Iconsax.heart5, color: Colors.red,)
            ],
    
          )
          ],
        ),
      ),
    );
  }
}
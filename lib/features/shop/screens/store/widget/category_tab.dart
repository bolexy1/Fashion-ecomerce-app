import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/brands/brand_showcase.dart';
import 'package:t_store/common/widgets/layout/grid_layout.dart';
import 'package:t_store/common/widgets/products/productscart/product_card_vertical.dart';
import 'package:t_store/common/widgets/text/section_heading.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

class BCategoryTab extends StatelessWidget {
  const BCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [Padding(
              padding: const EdgeInsets.all(BSizes.defaultSpace),
              child: Column(
                children: [
                  // brands 
                 const BBrandShowcase(image: [BImages.productImage3,BImages.productImage2,BImages.productImage1],),
                 const BBrandShowcase(image: [BImages.productImage3,BImages.productImage2,BImages.productImage1],),
                 const SizedBox(height: BSizes.spaceBtwItems,),
      
                  // products
                  BSectionHeading(title: 'You might like',  onPressed: (){},),
                  const SizedBox(height: BSizes.spaceBtwItems,),
      
                  BGridLayout(itemCount: 4, itemBuilder: (_, index)=>const BProductCardVertical())
                ],
              ),
              ),
              ]
    );
  }
}
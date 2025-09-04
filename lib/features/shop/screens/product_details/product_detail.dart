import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import 'package:t_store/common/widgets/text/section_heading.dart';
import 'package:t_store/features/shop/screens/product_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:t_store/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:t_store/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:t_store/features/shop/screens/product_details/widgets/products_details_image_slider.dart';
import 'package:t_store/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:t_store/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:t_store/utils/constants/sizes.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    
    return  Scaffold(

      bottomNavigationBar: BBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // product image slider
           const BProductsImageSlider(),
            // product details
            Padding(
              padding: const EdgeInsets.only(right: BSizes.defaultSpace, left: BSizes.defaultSpace, bottom: BSizes.defaultSpace),
              child: Column(
                children: [
                  //  Rating & share button
                  const BRatingAndShare(),
                  // price, title,, stock, & brand
                  const BProductMetaData(),

                  // attribute
                  const BProductAttributes(),
                   const SizedBox(height: BSizes.spaceBtwSections,),

                  // checkout button
                 
                  SizedBox( width: double.maxFinite, child:  ElevatedButton(onPressed: (){}, child: const Text('Checkout'))),
                  const SizedBox(height: BSizes.spaceBtwSections,),

                  // description
                   const BSectionHeading(title: 'Description', showActionButton: false,),
                  const SizedBox(height: BSizes.spaceBtwItems,),
                 const ReadMoreText(
                    'This is a Product description for Blue nike Shoes for sport cartegories, they are more things that you can add but lets just leave it at the shoes we have more color options for you as well',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: ' show more',
                    trimExpandedText: ' less',
                    moreStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),

                  // reviews
                  const Divider(),
                  const SizedBox(height: BSizes.spaceBtwItems,),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       const BSectionHeading(title: 'Review(199)', showActionButton: false,),
                       IconButton(onPressed: ()=>Get.to(()=> const ProductReviewsScreen()), icon: const Icon(Iconsax.arrow_right_3, size: 18,))
                     ],
                   ),
                  const SizedBox(height: BSizes.spaceBtwSections,),
                  
                 

                ],
              ),              
              )
            
          ],
        ),
      ),
    );
  }
}


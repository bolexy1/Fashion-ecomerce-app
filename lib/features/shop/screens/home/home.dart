
import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:t_store/common/widgets/custom_shapes/container/search_container.dart';
import 'package:t_store/common/widgets/layout/grid_layout.dart';
import 'package:t_store/common/widgets/products/productscart/product_card_vertical.dart';
import 'package:t_store/common/widgets/text/section_heading.dart';
import 'package:t_store/features/shop/screens/home/widget/home_appbar.dart';
import 'package:t_store/features/shop/screens/home/widget/home_categories.dart';
import 'package:t_store/features/shop/screens/home/widget/promo_slider.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return  Scaffold(      
      body:  SingleChildScrollView(
        child: Column(
          children: [
            // header
           const BPrimaryHeaderContainer(
              child: Column(
                children:  [
                  // appbar
                  BHomeAppBar(),
                 SizedBox(height: TSizes.spaceBtwSections,),

                  // searchbar
                   BSearchContainer(text: 'Search in store', ),

                  // cartegories 
                  Padding(padding: 
                  EdgeInsetsGeometry.only(left: TSizes.defaultSpace),
                  child: Column( 
                    children: [
                      BSectionHeading(title: 'Porpular cartegories', showActionButton: false, textColor: TColors.white,),
                      SizedBox(height: TSizes.spaceBtwItems,),

                      // categories
                      BHomeCategories()
                  ],),)


                ],
              ),),
              Column(
                children: [
                 const Padding(
                    padding:  EdgeInsets.all(TSizes.defaultSpace),
                    child: BPromoSlider(banners: [TImages.promoBanner1,TImages.promoBanner2,TImages.promoBanner3],)
                  ),
                 const SizedBox(height: TSizes.spaceBtwSections,),

                //  heading

                   BSectionHeading(title: "Popular Product", onPressed: (){},),
                  const SizedBox(height: TSizes.spaceBtwItems,),


                  // popular products
                  BGridLayout(itemCount: 2, itemBuilder: (_, index)=> const BProductCardVertical()),
                  

              
                ],
              )
          ],
        ),
      ),
    );
  }
}


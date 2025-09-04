
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:t_store/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:t_store/common/widgets/custom_shapes/container/search_container.dart';
import 'package:t_store/common/widgets/layout/grid_layout.dart';
import 'package:t_store/common/widgets/products/productscart/product_card_vertical.dart';
import 'package:t_store/common/widgets/text/section_heading.dart';
import 'package:t_store/features/shop/screens/all_products/all_products.dart';
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
                 SizedBox(height: BSizes.spaceBtwSections,),

                  // searchbar
                   BSearchContainer(text: 'Search in store', ),
                   SizedBox(height: BSizes.spaceBtwSections,),

                  // cartegories 
                  Padding(padding: 
                  EdgeInsetsGeometry.only(left: BSizes.defaultSpace),
                  child: Column( 
                    children: [
                      BSectionHeading(title: 'Porpular cartegories', showActionButton: false, textColor: BColors.white,),
                      SizedBox(height: BSizes.spaceBtwItems,),

                      // categories
                      BHomeCategories()
                  ],),),
                   SizedBox(height: BSizes.spaceBtwSections,)


                ],
              ),),
              Column(
                children: [
                 const Padding(
                    padding:  EdgeInsets.all(BSizes.defaultSpace),
                    child: BPromoSlider(banners: [TImages.promoBanner1,TImages.promoBanner2,TImages.promoBanner3],)
                  ),
                 const SizedBox(height: BSizes.spaceBtwSections,),

                //  heading

                   BSectionHeading(title: "Popular Product", onPressed: ()=>Get.to(()=>const AllProducts()),),
                  const SizedBox(height: BSizes.spaceBtwItems,),


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


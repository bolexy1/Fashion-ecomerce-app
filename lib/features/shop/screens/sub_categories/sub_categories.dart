import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/images/rounded_images.dart';
import 'package:t_store/common/widgets/products/productscart/product_car_horizontal.dart';
import 'package:t_store/common/widgets/text/section_heading.dart';
import 'package:t_store/features/shop/screens/brands/all_brands.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const BAppbar(title: Text('Sports Shirts'), showBackArrow: true,),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // Banner
              const BRoundedImage(width: double.infinity, image: TImages.banner3, applyImageRadius: true,),
              const SizedBox(height: TSizes.spaceBtwSections,),

              // sub-categories
              Column(
                children: [
                  // heading
                  BSectionHeading(title: 'Sports Shirts', onPressed: (){}),
                  const SizedBox(height: TSizes.spaceBtwItems/2,),

                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context,index)=> const SizedBox(width: TSizes.spaceBtwItems,),
                      itemBuilder:(context, index) => const BProductCarHorizontal()),
                  ),
                ],
              )
            ],
          ),),
      ),
    );
  }
}
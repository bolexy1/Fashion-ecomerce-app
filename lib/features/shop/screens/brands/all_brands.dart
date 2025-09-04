import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/brands/brand_card.dart';
import 'package:t_store/common/widgets/layout/grid_layout.dart';
import 'package:t_store/common/widgets/products/sortable/sortable_products.dart';
import 'package:t_store/common/widgets/text/section_heading.dart';
import 'package:t_store/features/shop/screens/brands/brand_products.dart';
import 'package:t_store/utils/constants/sizes.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BAppbar(
        title: Text('Brand'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // heading
              const BSectionHeading(title: 'Brands', showActionButton: false,),
              const SizedBox(height: TSizes.spaceBtwItems,),

              // brand
              BGridLayout(
                itemCount: 10, 
                mainAxisExtent: 80, 
                itemBuilder: (context, index)=> BBrandCard(showBoarder: true, onTap:()=> Get.to(()=> const BBrandProducts()) ,))

            ],
          ),),
      ),
    );
  }
}
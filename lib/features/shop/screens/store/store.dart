import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/appbar/tabbar.dart';
import 'package:t_store/common/widgets/brands/brand_card.dart';
import 'package:t_store/common/widgets/custom_shapes/container/search_container.dart';
import 'package:t_store/common/widgets/layout/grid_layout.dart';
import 'package:t_store/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:t_store/common/widgets/text/section_heading.dart';
import 'package:t_store/features/shop/screens/brands/all_brands.dart';
import 'package:t_store/features/shop/screens/store/widget/category_tab.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    // BHelperFunctions.isDarkMode(context);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: BAppbar(
          title: Text("Store" , style: Theme.of(context).textTheme.headlineMedium,),
          actions: [
            BCartCounterIcon(onPressed: (){},)
          ],
        ),
        body: NestedScrollView(headerSliverBuilder:  (_, innerBoxisScrolled){
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: BHelperFunctions.isDarkMode(context ) ? TColors.black : TColors.white,
              expandedHeight: 440 ,
      
              flexibleSpace: Padding(padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: ListView(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: [
      
                  // seaerch bar
      
                  const SizedBox(height: TSizes.spaceBtwItems,),
                  const BSearchContainer(text: 'Search in store', showBoarder: true,showBackgrond: false, padding: EdgeInsets.zero,),
                  const SizedBox(height: TSizes.spaceBtwSections,),
      
                  // feature brands
                  BSectionHeading(title: "Featured Brands",  onPressed: ()=> Get.to(()=> const AllBrandsScreen()),),
                  const SizedBox(height: TSizes.spaceBtwItems/1.5,),
      
                  BGridLayout(itemCount: 4 ,mainAxisExtent:80 , itemBuilder: (_, index){
                    return const BBrandCard(showBoarder: false,);
                  })
      
                ],
              ),) ,
              // tabs 
              bottom: const BTabbar(                
                 tabs:  [
                Tab(child: Text("Sports"),),
                Tab(child: Text("Furnture"),),
                Tab(child: Text("Electronics"),),
                Tab(child: Text("Clothes"),),
                Tab(child: Text("Cosmetics"),),
                ] 
              )
      
            )
          ];
        }, 
        body: const TabBarView(children: [
          BCategoryTab(),
          BCategoryTab(),
          BCategoryTab(),
          BCategoryTab(),
          BCategoryTab(),
      
            
        ])
        
         ),
      ),
    );
  }
}


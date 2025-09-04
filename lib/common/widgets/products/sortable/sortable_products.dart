import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/layout/grid_layout.dart';
import 'package:t_store/common/widgets/products/productscart/product_card_vertical.dart';
import 'package:t_store/utils/constants/sizes.dart';

class BSortableProducts extends StatelessWidget {
  const BSortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Dropdown
        DropdownButtonFormField(
          decoration: const InputDecoration(prefixIcon: Icon(Iconsax.sort)),
          onChanged: (value){},
          items: ['Name', 'Higher Price', 'Lower Price', 'Sale', 'Newest', 'Popularity'].map(
            (option)=>DropdownMenuItem(
              value: option,
              child: Text(option))).toList(),               
          ),
          const SizedBox(height: TSizes.spaceBtwSections,),
          // products
          BGridLayout(
            itemCount: 8, itemBuilder: (_, index)=> const BProductCardVertical() )
    
        
    
      ],
    );
  }
}
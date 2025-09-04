import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/products/cart/cart_item.dart';
import 'package:t_store/common/widgets/products/cart/product_quantity_with_add_and_remove.dart';
import 'package:t_store/common/widgets/products/product_price/product_price_text.dart';
import 'package:t_store/utils/constants/sizes.dart';

class BCartItems extends StatelessWidget {
  const BCartItems({super.key,  this.showAddRemoveButtons = true});

  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
          shrinkWrap: true,
          separatorBuilder: (_,__) => SizedBox(height: BSizes.spaceBtwSections,),
           itemCount: 2,
            itemBuilder: (_, index)
            =>  Column(
              children: [
                // cartItem
                const BCartItem(),
               if(showAddRemoveButtons) const SizedBox(height: BSizes.spaceBtwItems,),
                // add Remove button row with total price
                if(showAddRemoveButtons)
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        // extra space
                        SizedBox(width:70 ,),
                    // add and remove button
                    BProductQuantitywithAddandRemove(),
                      ],
                    ),
      
                    BProductPriceText(price: '256'),
                    
                  ],
                )
              ],
            ),
            );
  }
}
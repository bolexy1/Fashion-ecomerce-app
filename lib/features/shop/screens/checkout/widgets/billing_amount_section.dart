import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/sizes.dart';

class BBillingAmounttSection extends StatelessWidget {
  const BBillingAmounttSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        // subtotal
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Subtotal', style: Theme.of(context).textTheme.bodyMedium,),
            Text('\$256.0', style: Theme.of(context).textTheme.bodyMedium,),
            
          ],
        ),
        const SizedBox(height: BSizes.spaceBtwItems/2,),

        // shipping fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Shipping fee', style: Theme.of(context).textTheme.bodyMedium,),
            Text('\$6.0', style: Theme.of(context).textTheme.labelLarge,),
            
          ],
        ),
        const SizedBox(height: BSizes.spaceBtwItems/2,),

        // tax fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Tax fee', style: Theme.of(context).textTheme.bodyMedium,),
            Text('\$6.0', style: Theme.of(context).textTheme.labelLarge,),
            
          ],
        ),
        const SizedBox(height: BSizes.spaceBtwItems/2,),

        // order total
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('order total', style: Theme.of(context).textTheme.bodyMedium,),
            Text('\$256.0', style: Theme.of(context).textTheme.titleMedium,),
            
          ],
        ),
        const SizedBox(height: BSizes.spaceBtwItems/2,),

      ],
    );
  }
}
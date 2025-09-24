import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/text/section_heading.dart';
import 'package:t_store/utils/constants/sizes.dart';

class BBillingAddressSection extends StatelessWidget {
  const BBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BSectionHeading(title: 'Shipping Address', buttonTitle: 'Change', onPressed: (){},),
        Text('Address', style: Theme.of(context).textTheme.bodyLarge,),
        const SizedBox(height: BSizes.spaceBtwItems/2),
        Row(
          children: [
            const Icon(Icons.phone, color: Colors.grey, size: 16,),
            const SizedBox(width: BSizes.spaceBtwItems,),
            Text('07053024649', style: Theme.of(context).textTheme.bodyMedium,)
          ],
        ),
        const SizedBox(height: BSizes.spaceBtwItems/2),
        Row(
          children: [
            const Icon(Icons.location_history, color: Colors.grey, size: 16,),
            const SizedBox(width: BSizes.spaceBtwItems,),
            Text('Odk, Isebo Road, Ibadan.', style: Theme.of(context).textTheme.bodyMedium, softWrap: true,)
          ],
        ),
        const SizedBox(height: BSizes.spaceBtwItems/2),
        
      ],
    );
  }
}
import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:t_store/common/widgets/text/section_heading.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class BBillingPaymentSection extends StatelessWidget {
  const BBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = BHelperFunctions.isDarkMode(context);
    return  Column(
      children: [
        BSectionHeading(title: 'Payment Method', buttonTitle: 'Change', onPressed: (){},),
        const SizedBox(height: BSizes.spaceBtwItems/2),
         Row(
          children: [
            BRoundedContainer(
              width: 60,
              height: 35,
              backgroundColor: dark ? BColors.light : BColors.white,
              padding: const EdgeInsets.all(BSizes.sm),
              child: const Image(image: AssetImage(TImages.paypal), fit: BoxFit.contain,),
            ),
            const SizedBox(width: BSizes.spaceBtwItems/2),
            Text('Paypal', style: Theme.of(context).textTheme.bodyLarge,),
            
          ],
        )
      ],
    );
  }
}
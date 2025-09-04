import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class BCouponCode extends StatelessWidget {
  const BCouponCode({
    super.key,
    
  });


  @override
  Widget build(BuildContext context) {
    final dark = BHelperFunctions.isDarkMode(context);
    return BRoundedContainer(
      showBorder: true,
      backgroundColor: dark ? TColors.dark : Colors.white,
      padding: const EdgeInsets.only(top:TSizes.sm, bottom: TSizes.sm, right: TSizes.sm, left: TSizes.md),
      child: Row(
        children: [
          // TextField
          Flexible(
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Have a promo code ? Enter here',
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none
              ),
            ),
          ),
          // button
        SizedBox(
          width: 80,  
          child: ElevatedButton(
            onPressed: (){},
            style: ElevatedButton.styleFrom(
              foregroundColor: dark ? TColors.white.withOpacity(0.5): TColors.dark.withOpacity(0.5),
              backgroundColor: Colors.grey.withOpacity(0.2),
              side: BorderSide(color: Colors.grey.withOpacity(0.1)),
              
            ), 
            child: const Text('Apply'),
            )
            ),
        ],
    
        
      ),  );
  }
}
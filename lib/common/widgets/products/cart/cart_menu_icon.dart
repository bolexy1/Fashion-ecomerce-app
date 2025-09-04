import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/shop/screens/cart/cart.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class BCartCounterIcon extends StatelessWidget {
  const BCartCounterIcon({
    super.key, required this.onPressed,  this.iconColor, this.couterBgColor, this.counterTextColor
  });

  final VoidCallback onPressed;
  final Color? iconColor, couterBgColor, counterTextColor;

  @override
  Widget build(BuildContext context) {
    final dark =BHelperFunctions.isDarkMode(context);
    return Stack(
      children: [
        IconButton(onPressed: ()=> Get.to(()=>const CartScreen()), icon:  Icon(Iconsax.shopping_bag, color: iconColor)),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color:couterBgColor??(dark?TColors.white:TColors.black),
              borderRadius: BorderRadius.circular(100),
            ),
            child:  
            Center(
              child: Text("2", style: Theme.of(context).textTheme.labelLarge!.apply(color:counterTextColor??(dark ? TColors.white: TColors.black), fontSizeFactor: 0.8))                              ,
          ),
        ))
      ],
    );
  }
}





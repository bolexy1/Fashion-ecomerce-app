import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/device/device_utility.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class BSearchContainer extends StatelessWidget {
  const BSearchContainer({
    super.key, required this.text,  this.icon = Iconsax.search_normal,  this.showBackgrond = true,  this.showBoarder = true, this.ontap, this.padding = const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace)
  });

  final String text;
  final IconData? icon;
  final bool showBackgrond, showBoarder;
  final VoidCallback? ontap;
  final EdgeInsetsGeometry padding;


  @override
  Widget build(BuildContext context) {
    final dark = BHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: ontap,
      child: Padding(
        padding: padding,
        child: Container(
          
          width: BDeviceUtils.getScreenWidth(context),
          padding: const EdgeInsets.all(TSizes.md),
          decoration: BoxDecoration(
            color: showBackgrond ? dark ? TColors.dark:TColors.light: Colors.transparent,
            borderRadius: BorderRadius.circular(TSizes.cardRadiusLg),
            border: showBoarder ? Border.all(color: TColors.grey ): null 
          ),
          child:  Row(
            children: [
               Icon(icon, color: TColors.darkerGrey,),
               const SizedBox(width: TSizes.spaceBtwItems,),
               Text(text, style:  Theme.of(context).textTheme.bodySmall)
            ],
          ),
        ),
      ),
    );
  }
}


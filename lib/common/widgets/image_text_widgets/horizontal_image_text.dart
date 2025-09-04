import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';
class BHorizontalimageText extends StatelessWidget {
  const BHorizontalimageText({
    super.key, required this.image, required this.title,  this.textColor = TColors.white, this.backgroundColor = TColors.white, this.ontap,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    final dark = BHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.only(right:TSizes.spaceBtwItems),
        child: Column(
          children: [
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(TSizes.sm),
              decoration: BoxDecoration(
                color: backgroundColor ?? (dark? TColors.white:TColors.black ),
                borderRadius: BorderRadius.circular(100)
              ),
              child:  Center(
                child: Image(     
                  fit: BoxFit.cover, 
                  color: dark ? TColors.black: TColors.white  ,                                
                  image: AssetImage(image)),
              ) ,
            ),
            const SizedBox(height: TSizes.spaceBtwItems,),
            SizedBox( width:55, child:  Text(title, style:  Theme.of(context).textTheme.labelMedium!.apply(color:textColor), maxLines: 1,overflow:TextOverflow.ellipsis,))
            // text
          ],
        ),
      ),
    );
  }
}


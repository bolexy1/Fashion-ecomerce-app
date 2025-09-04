import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/text/brand_title_text.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/enums.dart';
import 'package:t_store/utils/constants/sizes.dart';
class BBrandTitleWithVerifiedIcon extends StatelessWidget {
  const BBrandTitleWithVerifiedIcon({
    super.key, required this.title,  this.maxline =1, this.textColor, this.iconColor = BColors.primary, this.textAlign = TextAlign.center,  this.brandTextSize = TexBSizes.small,
  });


  final String title;
  final int maxline;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TexBSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
     children: [
      Flexible(child: BBrandTitleText
      (title: title,
      color: textColor,
      maxline: maxline,
      textAlign: textAlign,
      brandTextSize: brandTextSize,
      )),       
       const SizedBox(width: BSizes.xs,),
        Icon(Iconsax.verify, color: iconColor, size: BSizes.iconXs,),
     ],
    );
  }
}




import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/enums.dart';

class BBrandTitleText extends StatelessWidget {
  const BBrandTitleText({super.key, this.color, required this.title,  this.maxline=1, this.textAlign = TextAlign.center,  this.brandTextSize= TexBSizes.small});
  
  final Color? color;
  final String title;
  final int maxline;
  final TextAlign? textAlign;
  final TexBSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      maxLines: maxline,
      overflow: TextOverflow.ellipsis,
      // check which brandSize is required and set that style
      style: brandTextSize == TexBSizes.small ? Theme.of(context).textTheme.labelMedium!.apply(color: color):brandTextSize == TexBSizes.medium
      ? Theme.of(context).textTheme.bodyLarge!.apply(color: color):brandTextSize == TexBSizes.large 
      ?Theme.of(context).textTheme.titleLarge!.apply(color: color):Theme.of(context).textTheme.bodyMedium!.apply(color: color)
    );
  }
}
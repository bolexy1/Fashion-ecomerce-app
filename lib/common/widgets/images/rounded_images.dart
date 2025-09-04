import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/sizes.dart';


class BRoundedImage extends StatelessWidget {
  const BRoundedImage({
    super.key, required this.image, this.width , this.height,  this.applyImageRadius = true, this.border,  this.backgroundColor, this.fit = BoxFit.contain, this.padding,  this.isNetworkImage = false,  this.onPressed,  this.borderRadius = BSizes.md,
  });

  final String image;
  final double? width, height;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color? backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double borderRadius;
  

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration:BoxDecoration(
          color: backgroundColor,
          border: border,
          borderRadius: BorderRadius.circular(borderRadius),
          
        ),
        child: ClipRRect(borderRadius:BorderRadius.circular(borderRadius), child:  Image(image: isNetworkImage ? NetworkImage(image): AssetImage(image) as ImageProvider, fit: fit,)),
      ),
    );
  }
}


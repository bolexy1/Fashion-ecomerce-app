import 'package:flutter/material.dart';

class BProductPriceText extends StatelessWidget {
  const BProductPriceText({
    super.key,  this.currencySign = '\$', required this.price,  this.maxlines = 1,  this.isLarge = false,  this.linThrough = false,
  });

  final String currencySign, price;
  final int maxlines;
  final bool isLarge;
  final bool linThrough;

  @override
  Widget build(BuildContext context) {
    return Text(
      currencySign+ price,
      maxLines: maxlines,
      overflow: TextOverflow.ellipsis,
      style: isLarge ?
       Theme.of(context).textTheme.headlineMedium!.apply(decoration: linThrough? TextDecoration.lineThrough:null)
       :Theme.of(context).textTheme.titleLarge!.apply(decoration: linThrough? TextDecoration.lineThrough:null),
    );
  }
}
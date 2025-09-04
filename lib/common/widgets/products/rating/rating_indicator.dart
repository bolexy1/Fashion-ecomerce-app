import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/utils/constants/colors.dart';

class BRatingBarIndicator extends StatelessWidget {
  const BRatingBarIndicator({
    super.key, required this.rating,
  });

  final double rating;

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      itemCount: 5,
      itemSize: 20,
      rating: rating,
      itemBuilder: (_, __)=> const Icon(Iconsax.star1, color: BColors.primary,));
  }
}

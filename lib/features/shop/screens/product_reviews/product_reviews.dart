import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/products/rating/rating_indicator.dart';
import 'package:t_store/features/shop/screens/product_reviews/widget/rating_progress_indicator.dart';
import 'package:t_store/features/shop/screens/product_reviews/widget/user_review_card.dart';
import 'package:t_store/utils/constants/sizes.dart';


class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      // appBar
      appBar:  const BAppbar(
        title: Text('Reviews & Ratings'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             const Text('Rating and review are verified and are from people who use the same type of device that you use'),
              const SizedBox(height: TSizes.spaceBtwItems,),
              
              // overall product rating 
              const BOverallProductRating(),
              // rating
              const BRatingBarIndicator(rating: 3.5,),
              Text('12,611', style: Theme.of(context).textTheme.bodySmall,),
              const SizedBox(height: TSizes.spaceBtwSections,),

              // user review List
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard()


              

            ],
          ),
          ),

      ),
    );
  }
}



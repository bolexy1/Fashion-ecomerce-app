import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:t_store/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:t_store/common/widgets/products/rating/rating_indicator.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark  = BHelperFunctions.isDarkMode(context);
    return  Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage(BImages.userProfileImage1),
                ),
                   const SizedBox(width: BSizes.spaceBtwItems,),
                   Text('Promise Bolu', style: Theme.of(context).textTheme.titleLarge,)
              ],
            ),
            IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert))
         
          ],
        ),
        const SizedBox(width: BSizes.spaceBtwItems,),

        // review
        Row(
          children: [
            const BRatingBarIndicator(rating: 4),
            const SizedBox(width: BSizes.spaceBtwItems,),
            Text('02 Sept, 2025', style: Theme.of(context).textTheme.bodyMedium)
          ],
        ),
        const SizedBox(width: BSizes.spaceBtwItems,),
        const ReadMoreText(
          'The user interface of the app is really friendly and beautiful, I was able to navigate and make purchases seamlessly, I must say you guys did a great job',
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimExpandedText: ' show less',
          trimCollapsedText: ' Show more',
          moreStyle:  TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: BColors.primary),
          lessStyle:  TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: BColors.primary,),),
          const SizedBox(height: BSizes.spaceBtwItems,),

          // company review

          BRoundedContainer(
            backgroundColor: dark ? BColors.darkerGrey : BColors.grey,
            child: Padding(
              padding: const EdgeInsets.all(BSizes.md),
              child: Column(
                children: [
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Bolexy's Store", style: Theme.of(context).textTheme.titleMedium),
                      Text('02 Sept, 2025', style: Theme.of(context).textTheme.bodyMedium)
                      ],
                   ),
                   const SizedBox(width: BSizes.spaceBtwItems,),
        const ReadMoreText(
          'The user interface of the app is really friendly and beautiful, I was able to navigate and make purchases seamlessly, I must say you guys did a great job',
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimExpandedText: ' show less',
          trimCollapsedText: ' Show more',
          moreStyle:  TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: BColors.primary),
          lessStyle:  TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: BColors.primary,),),
                ],
              ) ,),
              
          ),
          const SizedBox(height: BSizes.spaceBtwSections,)
          
      ],
    );
  }
}
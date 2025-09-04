import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/brands/brand_card.dart';
import 'package:t_store/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class BBrandShowcase extends StatelessWidget {
  const BBrandShowcase({
    super.key, required this.image,
  });

  final List<String> image;

  @override
  Widget build(BuildContext context) {
    return BRoundedContainer(
      showBorder: true,
      borderColor: TColors.darkGrey,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(TSizes.md),
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Column(
        children: [
          // brand with Products count
          const BBrandCard(showBoarder: false),
          const SizedBox(height: TSizes.spaceBtwItems,),
          // brand top 3 product image
          Row(
            children: image.map((image) =>brandTopProductImageWidget(image, context)).toList()
          )
        ],
      ) ,
    );
  }
}

Widget brandTopProductImageWidget(String image, context){
  return Expanded(
                child: BRoundedContainer(
                  height: 100,
                  backgroundColor: BHelperFunctions.isDarkMode(context)?TColors.darkGrey:TColors.light,
                  margin: const EdgeInsets.only(right: TSizes.sm),
                  padding: const EdgeInsets.all(TSizes.md),
                  child:  Image(
                    fit: BoxFit.contain,
                    image: AssetImage(image)),
                ),
              );
}

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
      borderColor: BColors.darkGrey,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(BSizes.md),
      margin: const EdgeInsets.only(bottom: BSizes.spaceBtwItems),
      child: Column(
        children: [
          // brand with Products count
          const BBrandCard(showBoarder: false),
          const SizedBox(height: BSizes.spaceBtwItems,),
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
                  backgroundColor: BHelperFunctions.isDarkMode(context)?BColors.darkGrey:BColors.light,
                  margin: const EdgeInsets.only(right: BSizes.sm),
                  padding: const EdgeInsets.all(BSizes.md),
                  child:  Image(
                    fit: BoxFit.contain,
                    image: AssetImage(image)),
                ),
              );
}

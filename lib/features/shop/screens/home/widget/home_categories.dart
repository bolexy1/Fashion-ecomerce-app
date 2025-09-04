import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/common/widgets/image_text_widgets/horizontal_image_text.dart';
import 'package:t_store/features/shop/screens/sub_categories/sub_categories.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';

class BHomeCategories extends StatelessWidget {
  const BHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount:6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index){
          return  BHorizontalimageText(image: TImages.shoeIcon,  title: 'Shoes', ontap: ()=> Get.to(()=>const SubCategoriesScreen()),);
        },),
    );
  }
}


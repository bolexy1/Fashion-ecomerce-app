import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/images/B_Circular_image.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';

class BUserProfileTile extends StatelessWidget {
  const BUserProfileTile({
    super.key, this.onPressed,
  });
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const BCircularImage(
        width: 50,
        height: 50,
        padding: 0,
        image: TImages.user,                    
        ),
        title: Text('Coding for me',style: Theme.of(context).textTheme.headlineSmall!.apply(color: TColors.white),),
        subtitle:  Text('Bolexy1@gmail.com',style: Theme.of(context).textTheme.bodyMedium!.apply(color: TColors.white),),
        trailing: IconButton(onPressed: onPressed, icon: const Icon(Iconsax.edit, color: TColors.white,)),
    );
  }
}
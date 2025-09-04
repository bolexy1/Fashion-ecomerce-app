import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/images/B_Circular_image.dart';
import 'package:t_store/common/widgets/text/section_heading.dart';
import 'package:t_store/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: const BAppbar(
        showBackArrow: true,        
        title: Text("Profile"),
      ),

      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(TSizes.defaultSpace),
        
        child: Column(
          children: [
            // Profile Picture
            SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  const BCircularImage(image: TImages.user, width: 80, height: 80,),
                  TextButton(onPressed: (){}, child:const Text('Change Profile Picture') )
                ],
              ),
            ),

            // details

            const SizedBox(height: TSizes.spaceBtwItems/2,),
            const Divider(),
            const SizedBox(height: TSizes.spaceBtwItems,),

           const BSectionHeading(title: 'Profile Information', showActionButton: false,), 
           const SizedBox(height: TSizes.spaceBtwItems,),

           BProfileMenu(onPressed: () {}, title: 'Name', value: 'Promise',),
           BProfileMenu(onPressed: () {}, title: 'Username', value: 'BOlexy',),

           const SizedBox(height: TSizes.spaceBtwItems/2,),
            const Divider(),
            const SizedBox(height: TSizes.spaceBtwItems,),

            // heading personal info

            const BSectionHeading(title: 'Profile Information', showActionButton: false,), 
            const SizedBox(height: TSizes.spaceBtwItems,),

             BProfileMenu(onPressed: () {}, title: 'User ID', value: '24687',),
           BProfileMenu(onPressed: () {}, title: 'E-mail', value: 'BOlexy',),
            BProfileMenu(onPressed: () {}, title: 'Phone Number', value: '+234-706-204-6749',),
           BProfileMenu(onPressed: () {}, title: 'Gender', value: 'Male',),
            BProfileMenu(onPressed: () {}, title: 'Date of Birth', value: '__',),
            const Divider(),
            const SizedBox(height: TSizes.spaceBtwItems,),

            Center(
              child: TextButton(onPressed: (){}, 
              child: const Text('Close Account', style: TextStyle(color: Colors.red),)),
            )
      

          ],
        ),),

      ),
    );
  }
}


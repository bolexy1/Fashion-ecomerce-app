import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:t_store/common/widgets/list_tile/settings_menu_tiles.dart';
import 'package:t_store/common/widgets/list_tile/user_profile__tile.dart';
import 'package:t_store/common/widgets/text/section_heading.dart';
import 'package:t_store/features/personalization/screens/adress/address.dart';
import 'package:t_store/features/personalization/screens/profile/profile.dart';
import 'package:t_store/features/shop/screens/order/order.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // -- Header
            BPrimaryHeaderContainer(child: Column(
              children: [
                BAppbar(
                  title: Text('Account', style: Theme.of(context).textTheme.headlineMedium!.apply(color: BColors.white),),
                ),
                const SizedBox(height: BSizes.spaceBtwSections,),

                // user profile card
               BUserProfileTile(onPressed: ()=> Get.to(()=> const ProfileScreen())),
                const SizedBox(height: BSizes.spaceBtwSections,)


              ],
            )),

            //  body

           Padding(              
              padding: const EdgeInsets.all(BSizes.defaultSpace),
              child: Column(
                children: [
                  // account setting
                 const BSectionHeading(title: 'Account Settings', showActionButton: false,),
                  const SizedBox(height: BSizes.spaceBtwItems,),
                   BSettingMenuTile(
                    icon: Iconsax.safe_home, 
                    title: 'My Address', 
                    subTitle: 'Set shopping delivery address',
                    onTap: () => Get.to(()=>const UserAddressScreen()),
                    
                    ),
                    const BSettingMenuTile(icon: Iconsax.shopping_cart, title: 'My cart', subTitle: 'Add, remove product and move to checkout'),
                     BSettingMenuTile(icon: Iconsax.bag_tick, title: 'My Order', subTitle: 'In-progress and Completed Orders', onTap: () => Get.to(()=>const OrderScreen()),),
                    const BSettingMenuTile(icon: Iconsax.bank, title: 'Bank Account', subTitle: 'Withdrew balance to registered bank account'),
                    const BSettingMenuTile(icon: Iconsax.discount_shape, title: 'My Coupons', subTitle: 'List of all the discounted coupons'),
                    const BSettingMenuTile(icon: Iconsax.notification, title: 'Notifications', subTitle: 'Set any kind of notification message'),
                    const BSettingMenuTile(icon: Iconsax.security_card, title: 'Account Privacy', subTitle: 'Manage data usage and connected accounts'),

                    // app settings

                    const SizedBox(height: BSizes.spaceBtwSections),
                    const BSectionHeading(title: 'App setting', showActionButton: false,),
                    const SizedBox(height: BSizes.spaceBtwSections),
                    const BSettingMenuTile(icon: Iconsax.document_upload, title: 'Load Data', subTitle: 'Update Data to your Cloud Firebase'),
                    BSettingMenuTile(icon: Iconsax.location, title: 'Geolocation', subTitle: 'Set recommended base on location', trailing: Switch(value: true, onChanged: (value) {}),),
                    BSettingMenuTile(icon: Iconsax.security_user, title: 'Safe mode', subTitle: 'Search result is safe for all ages', trailing: Switch(value: false, onChanged: (value){}),),
                    BSettingMenuTile(icon: Iconsax.image, title: 'HD Image Quality', subTitle: 'Set image quality to be seen', trailing: Switch(value: false, onChanged: (value){}),),
                    // logout button

                    const SizedBox(height: BSizes.spaceBtwSections,),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(onPressed: (){}, child: const Text('Logout')),),
                      const SizedBox(height: BSizes.spaceBtwSections*2.5,)
                    



                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


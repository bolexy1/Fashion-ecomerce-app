import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:t_store/common/widgets/products/cart/coupon_widget.dart';
import 'package:t_store/common/widgets/success_screen/success_screen.dart';
import 'package:t_store/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:t_store/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:t_store/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:t_store/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:t_store/navigation_menu.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = BHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: BAppbar(
          showBackArrow: true,
        title: Text('Order Review', style:  Theme.of(context).textTheme.headlineSmall,),
      ),
      body:   SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(BSizes.defaultSpace),
          child: Column(
            children: [
            const BCartItems(showAddRemoveButtons: false,),
             const SizedBox(height: BSizes.spaceBtwSections,),

              // coupon TextField
             const BCouponCode(),
             const SizedBox(height: BSizes.spaceBtwSections,),

              // billing section
              BRoundedContainer(
                showBorder: true,
                padding: const EdgeInsets.all(BSizes.md),
                backgroundColor: dark? BColors.black : BColors.white,
                child: const Column(
                  children: [
                    // pricing
                    BBillingAmounttSection(),
                    
                     SizedBox(height: BSizes.spaceBtwItems,),

                    // divider
                    Divider(),
                     SizedBox(height: BSizes.spaceBtwItems),

                    // Payment methods
                    BBillingPaymentSection(),
                    SizedBox(height: BSizes.spaceBtwItems),
                    // address
                    BBillingAddressSection(),
                    SizedBox(height: BSizes.spaceBtwItems),
                  ],
                ),
              )



            ],
          ),),
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(BSizes.defaultSpace ),
        child: ElevatedButton(onPressed: ()=> Get.to(()=> SuccessScreen(images: BImages.successfulPaymentIcon, title: 'Payment Success', subtitle: 'Your item will be shipped soon', onPressed: () => Get.offAll(()=>const NavigationMenu()),)), 
        child:const Text('Checkout \$256.0')),
      ),
    );
  }
}

 
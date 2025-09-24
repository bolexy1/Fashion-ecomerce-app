import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:t_store/features/shop/screens/checkout/checkout.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = BHelperFunctions.isDarkMode(context);
    return  Scaffold(
      appBar: BAppbar(
        showBackArrow: true,
        title: Text('Cart', style:  Theme.of(context).textTheme.headlineSmall,),
      ),
      body: const Padding(
        padding: EdgeInsets.all(BSizes.defaultSpace),
         child: BCartItems(),),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(BSizes.defaultSpace ),
        child: ElevatedButton(onPressed: ()=> Get.to(()=> const CheckoutScreen()), child:const Text('Checkout \$256.0')),
      ),
    );
  }
}


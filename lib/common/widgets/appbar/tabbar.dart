import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/device/device_utility.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class BTabbar extends StatelessWidget implements PreferredSizeWidget {
  const BTabbar({super.key, required this.tabs});
//  if you want to add background color to tabs you have to wrap them in material widget.
//  and to do so you nee  [preferredSizes] widget and thats why we created customer class

final List<Widget> tabs;
  @override
  Widget build(BuildContext context) {
    final dark =BHelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? TColors.black : TColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: TColors.primary,
        labelColor: dark ? TColors.white: TColors.primary,
        unselectedLabelColor: TColors.darkGrey,),
    );
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(BDeviceUtils.getAppBarHeight());
}
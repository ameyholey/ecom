import 'package:flutter/material.dart';
import 'package:t_store/utils/device/device_utility.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

import '../../utils/constants/colors.dart';


class Ttabbar extends StatelessWidget implements PreferredSizeWidget{
  const Ttabbar({super.key, required this.tabs});
final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Material(
  color:  dark ? TColors.black : TColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: TColors.primary,
        labelColor:dark ? TColors.black : TColors.white,
          unselectedLabelColor: TColors.primary,

      ),


    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}

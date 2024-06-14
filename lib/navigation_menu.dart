import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/comman/custom_shapes/containers/primary_header_container.dart';
import 'package:t_store/features/authentication/screen/mainhomescreen/home_screen.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          backgroundColor: darkMode ? TColors.black : Colors.white,
          indicatorColor:  darkMode ? TColors.white.withOpacity(0.1) : Colors.black.withOpacity(0.1),
          indicatorShape: LinearBorder.end(),
          height: 80,
          elevation: 3,

          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          selectedIndex: controller.selectedIndex.value,
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'home'),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'store'),
            NavigationDestination(icon: Icon(Iconsax.heart), label: 'wishlist'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'profile'),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    Container(
      color: Colors.purple,
    ),
    Container(
      color: Colors.orange,
    ),
    Container(
      color: Colors.blue,
    )
  ];
}

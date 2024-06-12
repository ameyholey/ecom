import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        height:80,
        elevation: 3,
        // onDestinationSelected: (index) =>     ,


        selectedIndex: 0,
        destinations: [
        NavigationDestination(icon: Icon(Iconsax.home), label: 'home'),
        NavigationDestination(icon: Icon(Iconsax.shop), label: 'store'),
        NavigationDestination(icon: Icon(Iconsax.heart), label: 'wishlist'),
        NavigationDestination(icon: Icon(Iconsax.user), label: 'profile'),
      ],),
      body: Container(),
    );
  }
}
class NavigationController extends GetxController{
  final Rx<int> selectedIndex = 0.obs;



}

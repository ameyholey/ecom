import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/comman/custom_shapes/containers/primary_header_container.dart';
import 'package:t_store/comman/widgets/appbar.dart';
import 'package:t_store/utils/constants/colors.dart';
import '../../../../comman/custom_shapes/containers/TSearchContainers.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  TAppBar(
                      title: Column(
                        children: [
                          Text(
                            TTexts.homeAppbarTitle,
                            style: Theme.of(context).textTheme.labelMedium!.apply(
                                  color: TColors.grey,
                                ),
                          ),
                          Text(
                            TTexts.homeAppbarSubTitle,
                            style: Theme.of(context).textTheme.labelMedium!.apply(
                                  color: TColors.grey,
                                ),
                          ),
                        ],
                      ),
                      actions: [
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Iconsax.shopping_bag))
                      ]),
                  const SizedBox(height: TSizes.spaceBtwItems,),
                  const Tsearchcontainers(),




                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}

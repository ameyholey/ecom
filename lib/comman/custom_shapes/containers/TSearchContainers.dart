import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/device/device_utility.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

import '../../../utils/constants/sizes.dart';
import '../../../utils/constants/text_strings.dart';

class Tsearchcontainers extends StatelessWidget {
  const Tsearchcontainers({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.onTap,
    this.showBackground = false,
    required this.showBorder,
  });

  final String text;
  final IconData? icon;
  final VoidCallback? onTap;
  final bool showBackground, showBorder;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
          child: Container(
            width: TDeviceUtils.getScreenWidth(context),
            padding: const EdgeInsets.all(TSizes.md),
            decoration: BoxDecoration(
                color: showBackground
                    ? dark
                        ? TColors.dark
                        : TColors.light
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(TSizes.cardRadiusLg),
                border: Border.all(color: TColors.grey)),
            child: Row(
              children: [
                Icon(
                  icon,
                  color: dark ? TColors.darkGrey : Colors.grey,
                ),
                const SizedBox(
                  width: TSizes.spaceBtwItems,
                ),
                Text(text, style: Theme.of(context).textTheme.bodySmall),
              ],
            ),
          )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';

class TVeritcalimage extends StatelessWidget {
  const TVeritcalimage({super.key, required this.image, required this.title,  this.backgroundColor, this.onTap});


  final String image,title;

  // final Colors textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,


      child: Padding(
        padding: const EdgeInsets.only(right: TSizes.spaceBtwItems),
        child: Column(
          children: [
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(TSizes.sm),
              decoration: BoxDecoration(
                  color: backgroundColor ?? (THelperFunctions.isDarkMode(context) ? TColors.black : TColors.white),
                  borderRadius: BorderRadius.circular(100)),
              child: Center(
                child: Image.asset(
                  TImages.sportIcon,
                  fit: BoxFit.cover,
                  color: THelperFunctions.isDarkMode(context) ? TColors.light : TColors.dark,
                ),
              ),

            ),
            const SizedBox(
              height: TSizes.spaceBtwItems/2,),
            Text(title,style: Theme.of(context).textTheme.labelMedium,),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:t_store/comman/custom_shapes/containers/troundedconner.dart';
import 'package:t_store/comman/heading/tproductpricetex.dart';
import 'package:t_store/comman/heading/tsectionheading.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

import '../../utils/constants/colors.dart';
import 'containers/tChoiceClip.dart';

class Tproductattribute extends StatelessWidget {
  const Tproductattribute({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        TRoundedContainer(
          backgroundColor: dark ? TColors.darkGrey : TColors.grey,
          child:  Column(
            children: [
              Row(
                children: [
                  TSectionheading(
                    title: 'varitaion',
                    showActionButton: false,
                  ),
                  SizedBox(
                    width: TSizes.spaceBtwItems,
                  ),
                  Row(
                    children: [
                      Text(
                        '\$25%',
                        style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),

                      ),  SizedBox(
                        width: TSizes.spaceBtwItems,
                      ),
                      TProductprixe(sign: '20'),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: TSizes.spaceBtwItems),
        Column(
          children: [
            TSectionheading(title: 'Colors'),
            SizedBox(height: TSizes.spaceBtwItems/2),
            TChoiceclip(text: 'Nike', selected: true,)
          ],
        ),
      ],
    );
  }
}


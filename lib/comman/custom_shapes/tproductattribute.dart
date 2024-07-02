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
                  const TSectionheading(
                    title: 'varitaion',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    width: TSizes.spaceBtwItems,
                  ),
                  Row(
                    children: [
                      Text(
                        '\$25%',
                        style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),

                      ),  const SizedBox(
                        width: TSizes.spaceBtwItems,
                      ),
                      const TProductprixe(sign: '20'),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwItems),
        Column(
crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionheading(title: 'Colors'),
            const SizedBox(height: TSizes.spaceBtwItems/2),
           Wrap(
             spacing: 8,
             children: [
               TChoiceclip(text: 'Green', selected: false, onSelected: (value){},),
               TChoiceclip(text: 'blue', selected: true,  onSelected: (value){},),
               TChoiceclip(text: 'yellow', selected: false,onSelected: (value){},),
               TChoiceclip(text: 'Green', selected: false, onSelected: (value){},),
               TChoiceclip(text: 'blue', selected: true,  onSelected: (value){},),
               TChoiceclip(text: 'yellow', selected: false,onSelected: (value){},),
               TChoiceclip(text: 'Green', selected: false, onSelected: (value){},),
               TChoiceclip(text: 'blue', selected: true,   onSelected: (value){},),
               TChoiceclip(text: 'yellow', selected: false,onSelected: (value){},)

             ],
           )

          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionheading(title: 'Size'),
            const SizedBox(height: TSizes.spaceBtwItems/2),
        Wrap(
          spacing: 8,
          children: [

            TChoiceclip(text: 'EU 34', selected: true,onSelected: (value){},),
            TChoiceclip(text: 'EU 36', selected: false,onSelected: (value){},),
            TChoiceclip(text: 'EU 38', selected: false,onSelected: (value){},),


          ],
        ),
          ],
        ),
      ],
    );
  }
}


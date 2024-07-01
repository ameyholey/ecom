import 'package:flutter/material.dart';
import 'package:t_store/comman/custom_shapes/containers/tcircularimage.dart';
import 'package:t_store/comman/custom_shapes/containers/troundedconner.dart';
import 'package:t_store/comman/custom_shapes/tproductverticalcard.dart';
import 'package:t_store/comman/heading/producttitletext.dart';
import 'package:t_store/comman/heading/tbrandtitletext.dart';
import 'package:t_store/comman/heading/tproductpricetex.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/enums.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';

class Productmetadat extends StatelessWidget {
  const Productmetadat({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            TRoundedContainer(
              radius: TSizes.sm,
              backgroundColor: TColors.secondary.withOpacity(0.8),
              child: Text(
                '25%',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: TColors.black),
              ),
            ),
            Text(
              '25%',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .apply(color: TColors.black),
            ),
            const TProductprixe(
              sign: '\$255',
              isLarge: true,
            ),
            const TProductTitleText(title: 'Green Nike shoes'),
            const Row(
              children: [
                TProductTitleText(title: 'Status'),
                Text('Instock'),
              ],
            ),
            const Row(
              children: [
                Tcircularimage(
                  image: TImages.cosmeticsIcon,
                  height: 32,
                  width: 32,
                ),
                TBrandverifiedicon(
                  title: 'Nike',
                  brandTextSizes: TextSizes.medium,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/enums.dart';
import '../../utils/constants/sizes.dart';

class TBrandtitletext extends StatelessWidget {
  const TBrandtitletext({
    super.key,
    required this.title,
   this.maxLines = 1,
    this.textColor,
    this.iconColor =  TColors.primary,
    this.textAlign = TextAlign.center,
    this.brandTextSizes = TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Colors? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSizes;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'nike',
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        const SizedBox(width: TSizes.xs),
       Icon(Iconsax.verify, color: iconColor, size: TSizes.iconXs),
      ],
    );
  }
}

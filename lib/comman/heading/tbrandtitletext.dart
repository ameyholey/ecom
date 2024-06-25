import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/comman/heading/tbrandtitle.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/enums.dart';
import '../../utils/constants/sizes.dart';

class TBrandverifiedicon extends StatelessWidget {
  const TBrandverifiedicon({
    super.key,
    required this.title,
   this.maxLines = 1,
    this.textColor,
    this.iconColor = TColors.primary ,
    this.textAlign = TextAlign.center,
    this.brandTextSizes = TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSizes;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [



        Tbrandtitletext(),
        const SizedBox(width: TSizes.xs),
       Icon(Iconsax.verify, size: TSizes.iconXs,color: iconColor,),
      ],
    );
  }
}


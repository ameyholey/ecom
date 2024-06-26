import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/enums.dart';
import '../../utils/constants/image_strings.dart';
import '../../utils/constants/sizes.dart';
import '../../utils/helpers/helper_functions.dart';
import '../heading/tbrandtitletext.dart';
import 'containers/tcircularimage.dart';
import 'containers/troundedconner.dart';

class TBrandcard extends StatelessWidget {
  const TBrandcard({
    super.key,
    required this.showBroder,
    this.onTap,
  });

  final bool showBroder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: TRoundedContainer(
        padding: const EdgeInsets.all(TSizes.sm),
        showBorder: showBroder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            Flexible(
              child: Tcircularimage(
                isNetworkimage: false,
                image: TImages.clothIcon,
                backgroundColor: Colors.transparent,
                overlaycolor: THelperFunctions.isDarkMode(context)
                    ? TColors.white
                    : TColors.black,
              ),
            ),
            const SizedBox(
              width: TSizes.spaceBtwItems / 2,
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TBrandverifiedicon(
                      title: 'nike', brandTextSizes: TextSizes.large),
                  Text(
                    '256 product',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

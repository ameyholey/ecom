import 'package:flutter/material.dart';
import '../utils/constants/colors.dart';
import '../utils/constants/sizes.dart';
import '../utils/helpers/helper_functions.dart';
import 'custom_shapes/containers/troundedconner.dart';
import 'custom_shapes/tbrandcard.dart';

class TBrandshowcase extends StatelessWidget {
  const TBrandshowcase({
    super.key, required this.images,
  });
  final List<String> images;
  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      padding: const EdgeInsets.all(TSizes.md),
      showBorder: true,
      borderColor: TColors.darkGrey,
      backgroundColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Column(
        children: [
          const TBrandcard(showBroder: false),
          Row(
            children: images.map((image) => brandtopProductwidgets(image, context)).toList(),

          ),
        ],
      ),
    );
  }

  Widget brandtopProductwidgets(String image, context) {
    return Expanded(
      child: TRoundedContainer(
        height: 100,
        backgroundColor: THelperFunctions.isDarkMode(context)
            ? TColors.darkGrey
            : TColors.light,
        margin: const EdgeInsets.only(right: TSizes.sm),
        padding: const EdgeInsets.all(TSizes.md),
        child:  Image(
          fit: BoxFit.contain,
          image: AssetImage(image),
        ),
      ),
    );
  }
}
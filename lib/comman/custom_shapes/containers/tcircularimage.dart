import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';

class Tcircularimage extends StatelessWidget {
  const Tcircularimage({
    super.key,
    this.fit = BoxFit.cover,
    required this.image,
    this.isNetworkimage = false,
    this.overlaycolor,
    this.backgroundColor,
    this.width =56,
    this.height = 56,
    this.padding = TSizes.sm,
  });

  final BoxFit? fit;

  final String image;
  final isNetworkimage;

  final overlaycolor;
  final backgroundColor;
  final width, height, padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(TSizes.sm),
      decoration: BoxDecoration(
        color: backgroundColor ?? THelperFunctions.isDarkMode(context)
            ? TColors.black
            : TColors.white,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Image(
        image: isNetworkimage
            ? NetworkImage(image)
            : AssetImage(image) as ImageProvider,
        color: overlaycolor,
      ),
    );
  }
}

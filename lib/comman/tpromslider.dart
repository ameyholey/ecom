import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/comman/widgets/appbar.dart';
import 'package:t_store/comman/widgets/curvedwidget.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

import '../utils/constants/colors.dart';
import '../utils/constants/image_strings.dart';
import '../utils/constants/sizes.dart';
import 'custom_shapes/containers/tcircularicon.dart';
import 'images/troundedimage.dart';
class Tpromoslider extends StatelessWidget {
  const Tpromoslider({
    super.key,

  });


  @override
  Widget build(BuildContext context) {

    final dark = THelperFunctions.isDarkMode(context);
    return TCurvededgewidget(
        child: Container(
          color: dark ? TColors.darkGrey : TColors.light,
          child: Stack(
            children: [
              SizedBox(
                  height: 400,
                  child: Padding(
                      padding:
                      EdgeInsets.all(TSizes.productImageRadius * 2),
                      child: Center(
                          child: Image(
                              image: AssetImage(TImages.productImage1))))),
              Positioned(
                left: TSizes.defaultSpace,
                right: 0,
                bottom: 30,
                child: SizedBox(
                  height: 80,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      physics: AlwaysScrollableScrollPhysics(),
                      itemBuilder: (_, index) => TRoundedImage(
                        padding: EdgeInsets.all(TSizes.sm),
                        border: Border.all(color: TColors.primary),
                        imageUrl: TImages.productImage3,
                        width: 80,
                        backgroundColor:
                        dark ? TColors.dark : TColors.white,
                      ),
                      separatorBuilder: (_, __) =>
                          SizedBox(width: TSizes.spaceBtwItems),
                      itemCount: 6),
                ),
              ),
              TAppBar(
                showBackArrow: true,
                actions: [

                  TCircularIcon(icon: Iconsax.heart5,color: Colors.red,)

                ],
              ),
            ],
          ),
        ));
  }
}

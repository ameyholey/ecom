import 'package:flutter/material.dart';
import 'package:t_store/comman/custom_shapes/tproductverticalcard.dart';
import 'package:t_store/comman/heading/tsectionheading.dart';
import 'package:t_store/comman/tbrandshowcase.dart';
import 'package:t_store/comman/widgets/tgridlayout.dart';
import '../utils/constants/image_strings.dart';
import '../utils/constants/sizes.dart';

class Tcategorytab extends StatelessWidget {
  const Tcategorytab({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(TSizes.defaultSpace),
      child: Column(
        children: [
          const TSectionheading(
            title: 'you might ',
            showActionButton: true,
          ), const SizedBox(height: TSizes.spaceBtwItems),
          // TBrandshowcase(
          //   images: [
          //     TImages.productImage3,
          //     TImages.productImage2,
          //     TImages.productImage1,
          //   ],
          // ),

          TGridLayout(itemCount: 4, itemBuilder: (_, index) => const TProductVerticalCard())


        ],
      ),
    );
  }
}

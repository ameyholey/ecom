import 'package:flutter/material.dart';

import '../../utils/constants/sizes.dart';
import '../custom_shapes/tproductverticalcard.dart';
class TGridLayout extends StatelessWidget {
  const TGridLayout({
    super.key, required this.itemCount, this.mainAxisExtent, required this.itemBuilder,
  });
  final int itemCount;

  final double? mainAxisExtent;

  final Widget? Function (BuildContext, int) itemBuilder;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: itemCount,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: TSizes.gridViewSpacing,
          crossAxisSpacing: TSizes.gridViewSpacing,
          mainAxisExtent: 288,
        ),
        itemBuilder: itemBuilder);
  }
}

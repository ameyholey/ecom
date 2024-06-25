import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/comman/custom_shapes/containers/tverticalimage.dart';
import 'package:t_store/comman/custom_shapes/containers/primary_header_container.dart';
import 'package:t_store/comman/custom_shapes/tproductverticalcard.dart';
import 'package:t_store/comman/widgets/appbar.dart';
import 'package:t_store/utils/constants/colors.dart';
import '../../../../comman/custom_shapes/containers/TSearchContainers.dart';
import '../../../../comman/custom_shapes/containers/tpromoSlider.dart';
import '../../../../comman/heading/tsectionheading.dart';
import '../../../../comman/widgets/tgridlayout.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  TAppBar(
                      title: Column(
                        children: [
                          Text(
                            TTexts.homeAppbarTitle,
                            style:
                                Theme.of(context).textTheme.labelMedium!.apply(
                                      color: TColors.grey,
                                    ),
                          ),
                          Text(
                            TTexts.homeAppbarSubTitle,
                            style:
                                Theme.of(context).textTheme.labelMedium!.apply(
                                      color: TColors.grey,
                                    ),
                          ),
                        ],
                      ),
                      actions: [
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Iconsax.shopping_bag))
                      ]),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  const Tsearchcontainers( text: '', showBackground: false, showBorder: false, onTap: null,),
                  const TSectionheading(
                    title: 'Popular Categories',
                    showActionButton: false,
                  ),
                  SizedBox(
                    height: 80,
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: 6,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (_, index) {
                          return TVeritcalimage(
                            image: TImages.shoeIcon,
                            title: 'Shoes',
                            onTap: () {},
                          );
                        }),
                  ),
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(TSizes.defaultSpace),
                child: Column(
                  children: [
                    TPromoSlider(),
                    TGridLayout(itemCount: 4,itemBuilder: (_, index) => TProductVerticalCard(),),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}


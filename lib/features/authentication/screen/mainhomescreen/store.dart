import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/comman/custom_shapes/containers/troundedconner.dart';
import 'package:t_store/comman/heading/tsectionheading.dart';
import 'package:t_store/comman/widgets/appbar.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

import '../../../../comman/custom_shapes/containers/TSearchContainers.dart';
import '../../../../comman/custom_shapes/containers/tcircularimage.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text('Store'),
        actions: [
          Icon(Iconsax.shop),
        ],
      ),
      body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: THelperFunctions.isDarkMode(context)
                    ? TColors.black
                    : TColors.light,
                expandedHeight: 400,
                flexibleSpace: Padding(
                  padding: EdgeInsets.all(TSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),
                      Tsearchcontainers(
                        text: '',
                        onTap: null,
                        showBorder: true,
                      ),
                      SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),
                      TSectionheading(
                        title: 'Featured brands',
                        showActionButton: true,
                        onPressed: () {},
                      ),
                      SizedBox(
                        height: TSizes.spaceBtwItems / 1.5,
                      ),
                      TRoundedContainer(
                        padding: EdgeInsets.all(TSizes.sm),
                        showBorder: true,
                        backgroundColor: Colors.transparent,
                        child: Row(
                          children: [
                            Tcircularimage(
                              isNetworkimage: false,
                              image: TImages.clothIcon,
                              backgroundColor: Colors.transparent,
                              overlaycolor: THelperFunctions.isDarkMode(context) ? TColors.white : TColors.black,
                            ),
                            SizedBox(width: TSizes.spaceBtwItems/2,),
                            Column(
                              children: [

                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: Container()),
    );
  }
}


import 'package:flutter/material.dart';

import 'package:iconsax/iconsax.dart';
import 'package:t_store/comman/custom_shapes/containers/troundedconner.dart';
import 'package:t_store/comman/custom_shapes/tbrandcard.dart';
import 'package:t_store/comman/heading/tsectionheading.dart';
import 'package:t_store/comman/widgets/appbar.dart';
import 'package:t_store/comman/widgets/tgridlayout.dart';
import 'package:t_store/comman/widgets/ttabbar.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

import '../../../../comman/custom_shapes/containers/TSearchContainers.dart';

import '../../../../comman/tbrandshowcase.dart';
import '../../../../comman/tcategorytab.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: const TAppBar(
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
                  padding: const EdgeInsets.all(TSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      const SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),
                      const Tsearchcontainers(
                        text: '',
                        onTap: null,
                        showBorder: true,
                      ),
                      const SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),
                      TSectionheading(
                        title: 'Featured brands',
                        showActionButton: true,
                        onPressed: () {},
                      ),
                      const SizedBox(
                        height: TSizes.spaceBtwItems / 1.5,
                      ),
                      TGridLayout(
                          mainAxisExtent: 80,
                          itemCount: 4,
                          itemBuilder: (_, index) {
                            return const TBrandcard(
                              showBroder: false,
                            );
                          }),
                    ],
                  ),
                ),
                bottom: const Ttabbar(
                  // isScrollable: true,
                  // indicatorColor: TColors.primary,
                  // labelColor: THelperFunctions.isDarkMode(context) ? TColors.white : TColors.primary,
                  tabs: [
                    Tab(
                      child: Text('sports'),
                    ),
                    Tab(
                      child: Text('sports'),
                    ),
                    Tab(
                      child: Text('sports'),
                    ),
                    Tab(
                      child: Text('sports'),
                    ),
                  ],
                ),
              ),
            ];
          },
          body:   TabBarView(
            children: [
              Tcategorytab(),   Tcategorytab(),   Tcategorytab(),   Tcategorytab(),
            ],
          ),
        ),
      ),
    );
  }
}



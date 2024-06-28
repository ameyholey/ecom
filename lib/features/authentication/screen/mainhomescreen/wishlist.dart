import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/comman/custom_shapes/containers/tcircular.dart';
import 'package:t_store/comman/custom_shapes/containers/tcircularicon.dart';
import 'package:t_store/comman/custom_shapes/tproductverticalcard.dart';
import 'package:t_store/comman/widgets/appbar.dart';
import 'package:t_store/comman/widgets/tgridlayout.dart';
import 'package:t_store/features/authentication/screen/mainhomescreen/home_screen.dart';

import '../../../../utils/constants/sizes.dart';

class FavScreen extends StatelessWidget {
  const FavScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text(
          'Wishlist',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          TCircularIcon(
            icon: Iconsax.add,
            onPressed: () => Get.to(HomeScreen()),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TGridLayout(
                  itemCount: 4,
                  itemBuilder: (_, index) => TProductVerticalCard())
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/comman/custom_shapes/containers/productmetadata.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';
import '../../../comman/custom_shapes/tproductattribute.dart';
import '../../../comman/tpromslider.dart';


class Productdetail extends StatelessWidget {
  const Productdetail({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Tpromoslider(),
            Padding(
              padding: const EdgeInsets.only(
                  right: TSizes.defaultSpace,
                  left: TSizes.defaultSpace,
                  bottom: TSizes.defaultSpace),
              child: Column(
                children: [
                  Row(
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Iconsax.star,
                            color: Colors.amber,
                            size: 24,
                          ),
                          const SizedBox(
                            width: TSizes.spaceBtwItems / 2,
                          ),
                          Text.rich(TextSpan(children: [
                            TextSpan(
                                text: '5.0',
                                style: Theme.of(context).textTheme.bodyLarge),
                            const TextSpan(text: ('200')),
                          ]))
                        ],
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.share,
                          size: TSizes.iconMd,
                        ),
                      ),
                    ],
                  ),
                  //
                  //
                  const Productmetadat(),
                  const Tproductattribute(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import 'package:t_store/comman/custom_shapes/containers/productmetadata.dart';
import 'package:t_store/comman/heading/tsectionheading.dart';
import 'package:t_store/comman/tratingandreview.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';
import '../../../comman/custom_shapes/tproductattribute.dart';
import '../../../comman/tpromslider.dart';
import '../../../comman/widgets/tbottomaddtocart.dart';


class Productdetail extends StatelessWidget {
  const Productdetail({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: const Tbottomaddtocart(),
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
                  const SizedBox(height: TSizes.spaceBtwItems,),
                  const Tproductattribute(),
                  const SizedBox(height: TSizes.spaceBtwItems,),
                  SizedBox( width: double.infinity,child: ElevatedButton(onPressed: (){}, child: Text('Checkout'),)),
                  const SizedBox(height: TSizes.spaceBtwItems,),
                  const TSectionheading(title: 'Desprication',showActionButton: false,),
                  const SizedBox(height: TSizes.spaceBtwItems,),
                  const ReadMoreText(
                    'This product description for blue shoes There are more thing that can be added in this read more text widget',
                  trimLines: 2,
                   trimMode: TrimMode.Line,
                    trimCollapsedText: 'show more',
                    trimExpandedText: 'less',
                    moreStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w800),
                    lessStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w800),

                  ),
                  const Divider(),
                  const SizedBox(height: TSizes.spaceBtwItems,),
                  TSectionheading(title: 'Reviews(200)',onPressed: () => Get.to(()=> TRating())),
                  const SizedBox(height: TSizes.spaceBtwItems,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

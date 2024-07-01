import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/comman/custom_shapes/containers/tcircularicon.dart';
import 'package:t_store/comman/custom_shapes/curved_shapes.dart';
import 'package:t_store/comman/images/troundedimage.dart';
import 'package:t_store/comman/widgets/appbar.dart';
import 'package:t_store/comman/widgets/curvedwidget.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';
import '../../../comman/tpromslider.dart';
import '../../../utils/constants/image_strings.dart';

class Productdetail extends StatelessWidget {
  const Productdetail({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Tpromoslider(),
            Padding(
              padding: EdgeInsets.only(
                  right: TSizes.defaultSpace,
                  left: TSizes.defaultSpace,
                  bottom: TSizes.defaultSpace),
              child: Column(
                children: [

                  Row(
                    children: [
                    Row(
                    children: [
                      Icon(Iconsax.star,color: Colors.amber,size: 24,),
                      SizedBox(width: TSizes.spaceBtwItems/2,),
                      Text.rich(TextSpan(

                        children: [TextSpan(text: '5.0',style: Theme.of(context).textTheme.bodyLarge),
                        TextSpan(text: ('200')),


                        ]
                      ))



                    ],
                    ),
                      IconButton(onPressed: (){},  icon: Icon(Icons.share,size: TSizes.iconMd,),),                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

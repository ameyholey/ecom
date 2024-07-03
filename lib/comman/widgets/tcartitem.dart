import 'package:flutter/material.dart';
import '../../utils/constants/colors.dart';
import '../../utils/constants/image_strings.dart';
import '../../utils/constants/sizes.dart';
import '../../utils/helpers/helper_functions.dart';
import '../heading/producttitletext.dart';
import '../heading/tbrandtitletext.dart';
import '../images/troundedimage.dart';

class Tcartitem extends StatelessWidget {
  const Tcartitem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        TRoundedImage(imageUrl: TImages.productImage1,
          width: 60,
          height: 60,
          padding: EdgeInsets.all(TSizes.sm),
          backgroundColor:   THelperFunctions.isDarkMode(context) ? TColors.darkGrey : TColors.light,

        ),
        SizedBox(height: TSizes.spaceBtwSections,),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TBrandverifiedicon(title: 'nike'),
              Flexible(child: TProductTitleText(title: 'nike shoes and everthing hrere in cart', maxLines: 1,)),
              Text.rich(
                  TextSpan(
                      children: [
                        TextSpan(text: 'Color',style: Theme.of(context).textTheme.bodySmall),
                        TextSpan(text: 'Green ',style: Theme.of(context).textTheme.bodyLarge),
                        TextSpan(text: 'Size',style: Theme.of(context).textTheme.bodySmall),
                        TextSpan(text: 'UK',style: Theme.of(context).textTheme.bodyLarge),
                      ]


                  )



              )

            ],



          ),
        ),
      ],

    );
  }
}

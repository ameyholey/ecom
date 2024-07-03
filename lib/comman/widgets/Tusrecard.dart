import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:readmore/readmore.dart';
import 'package:t_store/comman/tratingandreview.dart';

import '../../utils/constants/image_strings.dart';
import '../../utils/constants/sizes.dart';
class Tusercard extends StatelessWidget {
  const Tusercard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(


      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Row(

              children: [
                CircleAvatar(backgroundImage:  AssetImage(TImages.userProfileImage1),),
                SizedBox(
                  width: TSizes.spaceBtwItems,
                ),
                Text('John',style: Theme.of(context).textTheme.titleLarge,),


              ],

            ),
            IconButton( onPressed: (){},icon: Icon(Icons.more_vert),),


          ],



        ),
        SizedBox(height: TSizes.spaceBtwItems,),
        Row(

          children: [
Text('4',style: Theme.of(context).textTheme.bodyMedium,) ,

          ],

        ),
        SizedBox(height: TSizes.spaceBtwItems,),
        ReadMoreText(
          'this the reviewd by john he the user have purchased the product and he is reviewing it',
          trimLines:  1,
          trimMode: TrimMode.Line,
          trimCollapsedText: 'show more',
          trimExpandedText: 'show less',
        ),
      ],
    );
  }
}

import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/comman/custom_shapes/containers/tcircularicon.dart';
import 'package:t_store/comman/heading/producttitletext.dart';
import 'package:t_store/comman/heading/tbrandtitletext.dart';
import 'package:t_store/comman/heading/tproductpricetex.dart';
import 'package:t_store/comman/images/troundedimage.dart';
import 'package:t_store/comman/widgets/appbar.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

import '../../../../comman/widgets/tcartitem.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
class Tcartscreen extends StatelessWidget {
  const Tcartscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(),
      body: SingleChildScrollView(
child: Padding(
  padding: EdgeInsets.all(TSizes.defaultSpace),
  child: ListView.separated(
    itemCount: 4,
    shrinkWrap: true,
    separatorBuilder: (_, __) => SizedBox(height: TSizes.spaceBtwSections,),
  itemBuilder: (_, index) => Column(
    children: [
      Tcartitem(),
      SizedBox(height: TSizes.spaceBtwItems,),
      Row(
        children: [
          Row(
            children: [
          
              TCircularIcon(icon:Iconsax.minus,
                width: 32,height: 32,
                size: TSizes.md,),
              SizedBox(width: TSizes.spaceBtwItems,),
              Text('2'),
              TCircularIcon(icon:Iconsax.add,
                width: 32,height: 32,
                size: TSizes.md,),
          
          
          
          
          
            ],
          ),
          TProductprixe(sign: '256')
        ],
      ),
    ],
  ),



  ),
),
      ),
      bottomNavigationBar: ElevatedButton(onPressed: (){},child: Text('checkout'),),

    );
  }
}


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/comman/widgets/appbar.dart';
import 'package:t_store/tadnewadress.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';

import 'comman/tsingleadress.dart';
class TUseradress extends StatelessWidget {
  const TUseradress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(

        backgroundColor: TColors.primary,
        onPressed: () => Get.to(()=> TAdnewwadress() ),
        child: Icon(  Iconsax.add,color: TColors.white,),
      ),
      appBar: TAppBar(
        showBackArrow: true,
        title: Text('Addreess',style: Theme.of(context).textTheme.headlineSmall,),
      ),
         body: SingleChildScrollView(
child: Padding(

  padding: EdgeInsets.all(TSizes.defaultSpace ),
  child: Column(

 children: [
   TSingleadreess(selectedAdress: true,),
   TSingleadreess(selectedAdress: false,),

 ],





  ),
),

         ),


    );
  }
}

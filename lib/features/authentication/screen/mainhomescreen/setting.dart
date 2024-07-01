import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/comman/custom_shapes/containers/primary_header_container.dart';
import 'package:t_store/comman/custom_shapes/containers/tcircular.dart';
import 'package:t_store/comman/custom_shapes/containers/tcircularimage.dart';
import 'package:t_store/comman/widgets/appbar.dart';
import 'package:t_store/comman/widgets/settingmenu.dart';
import 'package:t_store/utils/constants/colors.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
                child: Column(
              children: [
                TAppBar(
                  title: Text(
                    'Account',
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .apply(color: TColors.white),
                  ),
                ),
        ListTile(
                  // leading: Tcircularimage(image: TImages.user,height: 50,width: 50,padding: 0,),
                  title:  Text(
                    'Account',
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .apply(color: TColors.white),
                  ),
                 subtitle:  Text(
                    'Account',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .apply(color: TColors.white),
                  ),

                ),
                SizedBox(
                  height: TSizes.spaceBtwSections,
                ),



              ],
            ),),
Padding(padding: const EdgeInsets.all(TSizes.defaultSpace),
 child: Column(
   children: [
     const Text('Account setting'),
     const SizedBox(height: TSizes.defaultSpace,),
     TSettingmenutitle(icon: Iconsax.safe_home, title: 'my adderss', subtitle: 'set delivery address',trailing: null, onTap: (){}),
     TSettingmenutitle(icon: Iconsax.shopping_bag, title: 'my adderss', subtitle: 'set delivery address',trailing: null, onTap: (){}),
     TSettingmenutitle(icon: Iconsax.bag_tick, title: 'my adderss', subtitle: 'set delivery address',trailing: null, onTap: (){}),
     TSettingmenutitle(icon: Iconsax.bank, title: 'my adderss', subtitle: 'set delivery address',trailing: null, onTap: (){}),
     TSettingmenutitle(icon: Iconsax.discount_shape, title: 'my adderss', subtitle: 'set delivery address',trailing: null, onTap: (){}),
     TSettingmenutitle(icon: Iconsax.notification, title: 'my adderss', subtitle: 'set delivery address',trailing: null, onTap: (){}),
     TSettingmenutitle(icon: Iconsax.security, title: 'my adderss', subtitle: 'set delivery address',trailing: null, onTap: (){}),
     const SizedBox(height: TSizes.spaceBtwItems,),
     TSettingmenutitle(icon: Iconsax.document, title: 'my adderss', subtitle: 'set delivery address',trailing: null, onTap: (){}),
   ],
 ),



)
          ],
        ),
      ),
    );
  }
}

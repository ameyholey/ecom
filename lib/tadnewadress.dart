import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/comman/widgets/appbar.dart';
import 'package:t_store/utils/constants/sizes.dart';

class TAdnewwadress extends StatelessWidget {
  const TAdnewwadress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text('Add new addresss'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Iconsax.user), labelText: 'Name'),
                ),
                SizedBox(
                  height: TSizes.spaceBtwItems,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Iconsax.mobile), labelText: 'Phone '),
                ),
                SizedBox(
                  height: TSizes.spaceBtwItems,
                ),
                Row(
                  children: [
                    Expanded(
                        child: TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Iconsax.buliding),
                          labelText: 'Name'),
                    )),
                    SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),
                    Expanded(
                        child: TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Iconsax.code), labelText: 'Phone '),
                    )),
                  ],
                ),
                SizedBox(
                  height: TSizes.spaceBtwItems,
                ),
                Row(
                  children: [
                    Expanded(
                        child: TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Iconsax.buliding),
                          labelText: 'Name'),
                    )),
                    SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),
                    Expanded(
                        child: TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Iconsax.activity),
                          labelText: 'Phone '),
                    )),
                  ],
                ),

                SizedBox(
                  height: TSizes.spaceBtwItems,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Iconsax.building), labelText: 'Name'),
                ),
                SizedBox(
                  height: TSizes.spaceBtwItems,
                ),
                // TextFormField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.activity), labelText:'Phone ' ),),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('save'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

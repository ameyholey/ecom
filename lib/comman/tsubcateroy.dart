import 'package:flutter/material.dart';
import 'package:t_store/comman/images/troundedimage.dart';
import 'package:t_store/comman/widgets/appbar.dart';

import '../utils/constants/sizes.dart';
class TSubcatregory extends StatelessWidget {
  const TSubcatregory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(),
      body: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
           TRoundedImage(imageUrl: 'imageUrl'),

          ],

        ),
      ),


      ),
    );
  }
}

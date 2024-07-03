import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/comman/widgets/Tusrecard.dart';
import 'package:t_store/comman/widgets/tprogressindicator.dart';
import 'package:t_store/utils/constants/sizes.dart';

import '../utils/constants/colors.dart';

class TRating extends StatelessWidget {
  const TRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              Text('Rating and review is verifed by different users'),
              SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Text(
                      '4.8',
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        TProgressindicator(
                          text: '5',
                          value: 1.0,
                        ),
                        TProgressindicator(
                          text: '4',
                          value: 0.8,
                        ),
                        TProgressindicator(
                          text: '3',
                          value: 0.6,
                        ),
                        TProgressindicator(
                          text: '2',
                          value: 0.4,
                        ),
                        TProgressindicator(
                          text: '1',
                          value: 0.2,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              RatingBarIndicator(

                  rating: 4.5,
                  itemSize: 20,
                  unratedColor: TColors.grey,



                  itemBuilder: (_, __) =>
                      Icon(Iconsax.star1, color: TColors.primary)),
              Tusercard(),
              SizedBox(height: TSizes.spaceBtwItems,),
              Tusercard(),
            ],
          ),
        ),
      ),
    );
  }
}

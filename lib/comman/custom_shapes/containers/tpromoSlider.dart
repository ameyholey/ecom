import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get_storage/get_storage.dart';
import 'package:t_store/comman/custom_shapes/containers/tcircular.dart';
import 'package:t_store/features/authentication/controllers/home_controllers.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../images/troundedimage.dart';
class TPromoSlider extends StatelessWidget {
  const TPromoSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options:CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index,_) => controller.updatepageIndicator(index),

          ),
          items:const [

            TRoundedImage(imageUrl: TImages.promoBanner1),
            TRoundedImage(imageUrl: TImages.promoBanner2),
            TRoundedImage(imageUrl: TImages.promoBanner3),

          ],
        ),
        SizedBox(height: TSizes.spaceBtwItems,),
        Center(
          child: Obx(
              () => Row(
                mainAxisSize: MainAxisSize.min,
              children: [
                for(int i = 0;i < 3; i++)  TCircularContainer(
                  height: 4,
                  width: 20,
                  margin: EdgeInsets.only(right: 10),
                  backgroundColor: controller.carousalCurrentIndex.value == i ?  TColors.primary :  TColors.grey,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}


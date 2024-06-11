import 'package:flutter/material.dart';
import 'package:t_store/features/authentication/controllers/onboarding_controller.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: TDeviceUtils.getAppBarHeight(),
        right: TSizes.defaultSpace,
        child: TextButton(

          style: TextButton.styleFrom(shape: CircleBorder(),shadowColor: Colors.black,backgroundColor: Colors.blueAccent),
            onPressed: () => OnBoardingController.instance.skipPage(),
            child: Text('Skip')));
  }
}

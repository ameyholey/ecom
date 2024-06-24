import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
    class HomeController extends GetxController{



      final carousalCurrentIndex = 0.obs;
      void updatepageIndicator(index){
        carousalCurrentIndex.value = index;

      }




    }
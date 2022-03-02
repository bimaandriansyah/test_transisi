// ignore_for_file: prefer_const_constructors, camel_case_types, deprecated_member_use, file_names

import 'package:flutter/material.dart';
import 'package:for_test/constants/colors.dart';
import 'package:get/get.dart';

class snackbarHelper {
  static showError({required String description}) {
    Get.showSnackbar(GetBar(
      message: "😢 $description",
      mainButton: GestureDetector(
        onTap: () {
          if (Get.isSnackbarOpen) Get.back();
        },
        child: Container(
          margin: EdgeInsets.only(right: 10),
          child: Icon(
            Icons.close,
            color: AppColors.whiteColor,
          ),
        ),
      ),
      isDismissible: true,
      snackStyle: SnackStyle.FLOATING,
      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      borderRadius: 12,
      duration: Duration(seconds: 3),
      backgroundColor: AppColors.dangerColor,
      snackPosition: SnackPosition.TOP,
    ));
  }

  static showSuccess({required String description}) {
    Get.showSnackbar(GetBar(
      message: "👌 $description",
      mainButton: GestureDetector(
        onTap: () {
          if (Get.isSnackbarOpen) Get.back();
        },
        child: Container(
          margin: EdgeInsets.only(right: 10),
          child: Icon(
            Icons.close,
            color: AppColors.whiteColor,
          ),
        ),
      ),
      isDismissible: true,
      snackStyle: SnackStyle.FLOATING,
      duration: Duration(seconds: 3),
      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      borderRadius: 12,
      backgroundColor: AppColors.successColor,
      snackPosition: SnackPosition.TOP,
    ));
  }
}

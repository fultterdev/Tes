import 'package:rahul_s_application298/core/app_export.dart';
import 'package:rahul_s_application298/presentation/explore_page/models/explore_model.dart';
import 'package:flutter/material.dart';

class ExploreController extends GetxController {
  ExploreController(this.exploreModelObj);

  TextEditingController searchController = TextEditingController();

  Rx<ExploreModel> exploreModelObj;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}

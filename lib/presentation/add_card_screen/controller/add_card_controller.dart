import 'package:rahul_s_application298/core/app_export.dart';
import 'package:rahul_s_application298/presentation/add_card_screen/models/add_card_model.dart';
import 'package:flutter/material.dart';

class AddCardController extends GetxController {
  TextEditingController entercardnumberOneController = TextEditingController();

  TextEditingController expirationdateOneController = TextEditingController();

  TextEditingController securitycodeOneController = TextEditingController();

  TextEditingController entercardnumberThreeController =
      TextEditingController();

  Rx<AddCardModel> addCardModelObj = AddCardModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    entercardnumberOneController.dispose();
    expirationdateOneController.dispose();
    securitycodeOneController.dispose();
    entercardnumberThreeController.dispose();
  }
}

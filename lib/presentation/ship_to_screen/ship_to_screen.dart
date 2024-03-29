import '../ship_to_screen/widgets/ship_to_item_widget.dart';
import 'controller/ship_to_controller.dart';
import 'models/ship_to_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rahul_s_application298/core/app_export.dart';
import 'package:rahul_s_application298/widgets/app_bar/appbar_image.dart';
import 'package:rahul_s_application298/widgets/app_bar/appbar_title.dart';
import 'package:rahul_s_application298/widgets/app_bar/custom_app_bar.dart';
import 'package:rahul_s_application298/widgets/custom_button.dart';

class ShipToScreen extends GetWidget<ShipToController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(56),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getVerticalSize(28),
                    width: getHorizontalSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 13, bottom: 14),
                    onTap: () {
                      onTapArrowleft11();
                    }),
                title: AppbarTitle(
                    text: "lbl_ship_to".tr, margin: getMargin(left: 12)),
                actions: [
                  AppbarImage(
                      height: getVerticalSize(28),
                      width: getHorizontalSize(24),
                      svgPath: ImageConstant.imgPlus28x24,
                      margin:
                          getMargin(left: 16, top: 13, right: 16, bottom: 14),
                      onTap: () {
                        onTapPlus();
                      })
                ]),
            body: Padding(
                padding: getPadding(left: 16, top: 4, right: 16),
                child: Obx(() => ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: getVerticalSize(22));
                    },
                    itemCount: controller
                        .shipToModelObj.value.shipToItemList.value.length,
                    itemBuilder: (context, index) {
                      ShipToItemModel model = controller
                          .shipToModelObj.value.shipToItemList.value[index];
                      return ShipToItemWidget(model);
                    }))),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(57),
                text: "lbl_next".tr,
                margin: getMargin(left: 16, right: 16, bottom: 50),
                onTap: () {
                  onTapNext();
                })));
  }

  onTapNext() {
    Get.toNamed(
      AppRoutes.paymentMethodScreen,
    );
  }

  onTapArrowleft11() {
    Get.back();
  }

  onTapPlus() {
    Get.toNamed(
      AppRoutes.addressScreen,
    );
  }
}

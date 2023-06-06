import '../order_screen/widgets/order_item_widget.dart';
import 'controller/order_controller.dart';
import 'models/order_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rahul_s_application298/core/app_export.dart';
import 'package:rahul_s_application298/widgets/app_bar/appbar_image.dart';
import 'package:rahul_s_application298/widgets/app_bar/appbar_title.dart';
import 'package:rahul_s_application298/widgets/app_bar/custom_app_bar.dart';

class OrderScreen extends GetWidget<OrderController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(56),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 15, bottom: 16),
                    onTap: () {
                      onTapArrowleft16();
                    }),
                title: AppbarTitle(
                    text: "lbl_order".tr, margin: getMargin(left: 12))),
            body: Padding(
                padding: getPadding(left: 15, top: 19, right: 16),
                child: Obx(() => ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: getVerticalSize(10));
                    },
                    itemCount: controller
                        .orderModelObj.value.orderItemList.value.length,
                    itemBuilder: (context, index) {
                      OrderItemModel model = controller
                          .orderModelObj.value.orderItemList.value[index];
                      return OrderItemWidget(model, onTapOrder: () {
                        onTapOrder();
                      });
                    })))));
  }

  onTapOrder() {
    Get.toNamed(AppRoutes.orderDetailsScreen);
  }

  onTapArrowleft16() {
    Get.back();
  }
}

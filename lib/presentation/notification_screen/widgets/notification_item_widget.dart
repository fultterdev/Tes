import '../controller/notification_controller.dart';
import '../models/notification_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rahul_s_application298/core/app_export.dart';

// ignore: must_be_immutable
class NotificationItemWidget extends StatelessWidget {
  NotificationItemWidget(this.notificationItemModelObj);

  NotificationItemModel notificationItemModelObj;

  var controller = Get.find<NotificationController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: getPadding(
        top: 16,
        bottom: 16,
      ),
      decoration: AppDecoration.fillWhiteA700,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgArrowleft24x24,
            height: getSize(
              24,
            ),
            width: getSize(
              24,
            ),
            margin: getMargin(
              left: 16,
              top: 16,
              bottom: 110,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 12,
              top: 16,
              right: 17,
              bottom: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    notificationItemModelObj.transactionnikeOneTxt.value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsBold14Indigo900.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.5,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    305,
                  ),
                  margin: getMargin(
                    top: 11,
                  ),
                  child: Text(
                    "msg_culpa_cillum_co".tr,
                    maxLines: null,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsRegular12.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.5,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 9,
                  ),
                  child: Text(
                    "msg_april_30_2014".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsRegular10Indigo900.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.5,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

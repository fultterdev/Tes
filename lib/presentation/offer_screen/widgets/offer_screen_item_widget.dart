import '../controller/offer_controller.dart';
import '../models/offer_screen_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:rahul_s_application298/core/app_export.dart';

// ignore: must_be_immutable
class OfferScreenItemWidget extends StatelessWidget {
  OfferScreenItemWidget(this.offerScreenItemModelObj, {this.onTapProduct});

  OfferScreenItemModel offerScreenItemModelObj;

  var controller = Get.find<OfferController>();

  VoidCallback? onTapProduct;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapProduct?.call();
      },
      child: Container(
        padding: getPadding(
          all: 16,
        ),
        decoration: AppDecoration.outlineBlue501.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder5,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgProductimage109x1095,
              height: getSize(
                133,
              ),
              width: getSize(
                133,
              ),
              radius: BorderRadius.circular(
                getHorizontalSize(
                  5,
                ),
              ),
            ),
            Container(
              width: getHorizontalSize(
                107,
              ),
              margin: getMargin(
                top: 8,
              ),
              child: Text(
                "msg_nike_air_max_27".tr,
                maxLines: null,
                textAlign: TextAlign.left,
                style: AppStyle.txtPoppinsBold12Indigo900.copyWith(
                  letterSpacing: getHorizontalSize(
                    0.5,
                  ),
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                top: 5,
              ),
              child: RatingBar.builder(
                initialRating: 4,
                minRating: 0,
                direction: Axis.horizontal,
                allowHalfRating: false,
                itemSize: getVerticalSize(
                  12,
                ),
                unratedColor: ColorConstant.blue50,
                itemCount: 5,
                updateOnDrag: true,
                onRatingUpdate: (rating) {},
                itemBuilder: (context, _) {
                  return Icon(
                    Icons.star,
                    color: ColorConstant.yellow700,
                  );
                },
              ),
            ),
            Padding(
              padding: getPadding(
                top: 18,
              ),
              child: Text(
                "lbl_299_43".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtPoppinsBold12.copyWith(
                  letterSpacing: getHorizontalSize(
                    0.5,
                  ),
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                top: 5,
              ),
              child: Row(
                children: [
                  Text(
                    "lbl_534_33".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsRegular10.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.5,
                      ),
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 8,
                    ),
                    child: Text(
                      "lbl_24_off".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsBold10.copyWith(
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
      ),
    );
  }
}

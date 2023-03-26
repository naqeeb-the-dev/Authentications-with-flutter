import 'package:application1/core/app_export.dart';
import 'package:flutter/material.dart';

import '../controller/home_controller.dart';
import '../models/home_item_model.dart';

// ignore: must_be_immutable
class HomeItemWidget extends StatelessWidget {
  HomeItemWidget(this.homeItemModelObj);

  HomeItemModel homeItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: getMargin(
        top: 3.5,
        bottom: 3.5,
      ),
      decoration: AppDecoration.fillCyan201.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder13,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: getPadding(
              left: 6,
              top: 9,
              bottom: 13,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      24.00,
                    ),
                  ),
                  child: CommonImageView(
                    imagePath: ImageConstant.imgImage1,
                    height: getSize(
                      48.00,
                    ),
                    width: getSize(
                      48.00,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  margin: getMargin(
                    left: 15,
                    top: 14,
                    bottom: 17,
                  ),
                  decoration: AppDecoration.txtOutlineBlack9003f,
                  child: Text(
                    "lbl_sarah".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRubikRegular14,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              left: 212,
              top: 23,
              right: 7,
              bottom: 33,
            ),
            child: Text(
              "lbl_06_12".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtRubikRegular12,
            ),
          ),
        ],
      ),
    );
  }
}

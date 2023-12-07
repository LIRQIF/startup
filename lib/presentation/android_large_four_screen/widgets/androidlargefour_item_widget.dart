import '../models/androidlargefour_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sabung_pinjol/core/app_export.dart';

// ignore: must_be_immutable
class AndroidlargefourItemWidget extends StatelessWidget {
  AndroidlargefourItemWidget(
    this.androidlargefourItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  AndroidlargefourItemModel androidlargefourItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(13.h),
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder14,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse1,
            height: 45.adaptSize,
            width: 45.adaptSize,
            radius: BorderRadius.circular(
              22.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 11.h,
              top: 10.v,
              bottom: 10.v,
            ),
            child: Text(
              androidlargefourItemModelObj.akulaku!,
              style: theme.textTheme.titleLarge,
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 12.v,
              right: 7.h,
              bottom: 8.v,
            ),
            child: Text(
              androidlargefourItemModelObj.one!,
              style: theme.textTheme.titleLarge,
            ),
          ),
        ],
      ),
    );
  }
}

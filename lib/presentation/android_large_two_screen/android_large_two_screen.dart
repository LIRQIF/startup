import 'bloc/android_large_two_bloc.dart';
import 'models/android_large_two_model.dart';
import 'package:flutter/material.dart';
import 'package:sabung_pinjol/core/app_export.dart';
import 'package:sabung_pinjol/widgets/custom_text_form_field.dart';

class AndroidLargeTwoScreen extends StatelessWidget {
  const AndroidLargeTwoScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeTwoBloc>(
        create: (context) => AndroidLargeTwoBloc(AndroidLargeTwoState(
            androidLargeTwoModelObj: AndroidLargeTwoModel()))
          ..add(AndroidLargeTwoInitialEvent()),
        child: AndroidLargeTwoScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 17.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgDesainTanpaJu,
                          height: 64.v,
                          width: 175.h,
                          margin: EdgeInsets.only(left: 2.h)),
                      SizedBox(height: 1.v),
                      Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: Text("msg_temukan_pinjaman".tr,
                              style: CustomTextStyles.titleMedium16)),
                      SizedBox(height: 34.v),
                      Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: Text("msg_top_3_pinjam_online".tr,
                              style: theme.textTheme.titleMedium)),
                      SizedBox(height: 16.v),
                      _buildThirteen(context),
                      SizedBox(height: 20.v),
                      _buildComponentOne(context),
                      SizedBox(height: 22.v),
                      BlocSelector<AndroidLargeTwoBloc, AndroidLargeTwoState,
                              TextEditingController?>(
                          selector: (state) =>
                              state.materialsymbolsreadmoreController,
                          builder:
                              (context, materialsymbolsreadmoreController) {
                            return CustomTextFormField(
                                controller: materialsymbolsreadmoreController,
                                hintText: "msg_baca_lebih_banyak".tr,
                                textInputAction: TextInputAction.done,
                                suffix: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        30.h, 6.v, 17.h, 6.v),
                                    child: CustomImageView(
                                        imagePath: ImageConstant
                                            .imgMaterialsymbolsreadmore,
                                        height: 32.adaptSize,
                                        width: 32.adaptSize)),
                                suffixConstraints:
                                    BoxConstraints(maxHeight: 44.v));
                          }),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  Widget _buildThirteen(BuildContext context) {
    return SizedBox(
        height: 226.v,
        width: 324.h,
        child: Stack(alignment: Alignment.topCenter, children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: GestureDetector(
                  onTap: () {
                    onTapThree(context);
                  },
                  child: Container(
                      margin: EdgeInsets.only(left: 4.h),
                      padding: EdgeInsets.symmetric(
                          horizontal: 17.h, vertical: 11.v),
                      decoration: AppDecoration.fillOnPrimary.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder5),
                      child: Text("msg_mulai_bandingkan".tr,
                          style: theme.textTheme.titleMedium)))),
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  height: 161.v,
                  width: 324.h,
                  decoration: BoxDecoration(
                      color: theme.colorScheme.onPrimary,
                      borderRadius: BorderRadius.circular(10.h)))),
          Align(
              alignment: Alignment.center,
              child: Padding(
                  padding: EdgeInsets.only(left: 12.h, right: 17.h),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    Padding(
                        padding: EdgeInsets.only(right: 8.h),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(bottom: 3.v),
                                  child: Text("lbl_akulaku".tr,
                                      style: theme.textTheme.titleMedium)),
                              CustomImageView(
                                  imagePath: ImageConstant.imgMdiMedal,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize)
                            ])),
                    SizedBox(height: 6.v),
                    Divider(indent: 1.h, endIndent: 8.h),
                    SizedBox(height: 12.v),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.only(left: 1.h),
                            child: Text("lbl_kredivo".tr,
                                style: theme.textTheme.titleMedium))),
                    SizedBox(height: 9.v),
                    Divider(indent: 1.h, endIndent: 8.h),
                    SizedBox(height: 13.v),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.only(left: 1.h),
                            child: Text("lbl_easycash".tr,
                                style: theme.textTheme.titleMedium))),
                    SizedBox(height: 8.v),
                    Divider(indent: 1.h, endIndent: 7.h),
                    SizedBox(height: 56.v),
                    CustomImageView(
                        imagePath: ImageConstant.imgMakiArrow,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                        alignment: Alignment.centerRight)
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildComponentOne(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 2.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle5,
              height: 160.v,
              width: 320.h,
              radius: BorderRadius.circular(14.h)),
          SizedBox(height: 15.v),
          Container(
              width: 295.h,
              margin: EdgeInsets.only(right: 24.h),
              child: Text("msg_kertu_debit_mu_bisa".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.headlineSmall))
        ]));
  }

  /// Navigates to the androidLargeThreeScreen when the action is triggered.
  onTapThree(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.androidLargeThreeScreen,
    );
  }
}

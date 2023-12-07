import '../android_large_four_screen/widgets/androidlargefour_item_widget.dart';
import 'bloc/android_large_four_bloc.dart';
import 'models/android_large_four_model.dart';
import 'models/androidlargefour_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sabung_pinjol/core/app_export.dart';
import 'package:sabung_pinjol/widgets/custom_elevated_button.dart';

class AndroidLargeFourScreen extends StatelessWidget {
  const AndroidLargeFourScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeFourBloc>(
        create: (context) => AndroidLargeFourBloc(AndroidLargeFourState(
            androidLargeFourModelObj: AndroidLargeFourModel()))
          ..add(AndroidLargeFourInitialEvent()),
        child: AndroidLargeFourScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(left: 17.h, top: 75.v, right: 17.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomElevatedButton(
                          height: 24.v,
                          width: 97.h,
                          text: "lbl_kembali".tr,
                          leftIcon: Container(
                              margin: EdgeInsets.only(right: 3.h),
                              child: CustomImageView(
                                  imagePath: ImageConstant
                                      .imgMakiarrowOnprimarycontainer,
                                  height: 20.adaptSize,
                                  width: 20.adaptSize)),
                          buttonStyle: CustomButtonStyles.none,
                          buttonTextStyle: theme.textTheme.titleLarge!,
                          onPressed: () {
                            onTapKembali(context);
                          }),
                      SizedBox(height: 39.v),
                      Text("lbl_hasil_pencarian".tr,
                          style: theme.textTheme.titleLarge),
                      SizedBox(height: 18.v),
                      _buildAndroidLargeFour(context)
                    ]))));
  }

  /// Section Widget
  Widget _buildAndroidLargeFour(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 2.h),
        child: BlocSelector<AndroidLargeFourBloc, AndroidLargeFourState,
                AndroidLargeFourModel?>(
            selector: (state) => state.androidLargeFourModelObj,
            builder: (context, androidLargeFourModelObj) {
              return ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 19.v);
                  },
                  itemCount: androidLargeFourModelObj
                          ?.androidlargefourItemList.length ??
                      0,
                  itemBuilder: (context, index) {
                    AndroidlargefourItemModel model = androidLargeFourModelObj
                            ?.androidlargefourItemList[index] ??
                        AndroidlargefourItemModel();
                    return AndroidlargefourItemWidget(model);
                  });
            }));
  }

  /// Navigates to the androidLargeThreeScreen when the action is triggered.
  onTapKembali(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.androidLargeThreeScreen,
    );
  }
}

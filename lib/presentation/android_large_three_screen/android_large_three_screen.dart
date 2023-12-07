import 'bloc/android_large_three_bloc.dart';
import 'models/android_large_three_model.dart';
import 'package:flutter/material.dart';
import 'package:sabung_pinjol/core/app_export.dart';
import 'package:sabung_pinjol/widgets/custom_drop_down.dart';
import 'package:sabung_pinjol/widgets/custom_elevated_button.dart';
import 'package:sabung_pinjol/widgets/custom_text_form_field.dart';

class AndroidLargeThreeScreen extends StatelessWidget {
  const AndroidLargeThreeScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeThreeBloc>(
        create: (context) => AndroidLargeThreeBloc(AndroidLargeThreeState(
            androidLargeThreeModelObj: AndroidLargeThreeModel()))
          ..add(AndroidLargeThreeInitialEvent()),
        child: AndroidLargeThreeScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
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
                      Text("lbl_cari".tr, style: theme.textTheme.titleLarge),
                      SizedBox(height: 18.v),
                      Text("lbl_nominal".tr,
                          style: CustomTextStyles.titleMedium16),
                      SizedBox(height: 7.v),
                      BlocSelector<AndroidLargeThreeBloc,
                              AndroidLargeThreeState, TextEditingController?>(
                          selector: (state) => state.editTextController,
                          builder: (context, editTextController) {
                            return CustomTextFormField(
                                controller: editTextController,
                                textInputAction: TextInputAction.done);
                          }),
                      SizedBox(height: 10.v),
                      Text("lbl_durasi".tr,
                          style: CustomTextStyles.titleMedium16),
                      SizedBox(height: 7.v),
                      BlocSelector<AndroidLargeThreeBloc,
                              AndroidLargeThreeState, AndroidLargeThreeModel?>(
                          selector: (state) => state.androidLargeThreeModelObj,
                          builder: (context, androidLargeThreeModelObj) {
                            return CustomDropDown(
                                items: androidLargeThreeModelObj
                                        ?.dropdownItemList ??
                                    [],
                                onChanged: (value) {
                                  context
                                      .read<AndroidLargeThreeBloc>()
                                      .add(ChangeDropDownEvent(value: value));
                                });
                          }),
                      SizedBox(height: 27.v),
                      CustomElevatedButton(
                          text: "lbl_cari".tr,
                          onPressed: () {
                            onTapCari(context);
                          }),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Navigates to the androidLargeTwoScreen when the action is triggered.
  onTapKembali(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.androidLargeTwoScreen,
    );
  }

  /// Navigates to the androidLargeFourScreen when the action is triggered.
  onTapCari(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.androidLargeFourScreen,
    );
  }
}

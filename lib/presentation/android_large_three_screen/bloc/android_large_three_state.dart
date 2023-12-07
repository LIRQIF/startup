// ignore_for_file: must_be_immutable

part of 'android_large_three_bloc.dart';

/// Represents the state of AndroidLargeThree in the application.
class AndroidLargeThreeState extends Equatable {
  AndroidLargeThreeState({
    this.editTextController,
    this.selectedDropDownValue,
    this.androidLargeThreeModelObj,
  });

  TextEditingController? editTextController;

  SelectionPopupModel? selectedDropDownValue;

  AndroidLargeThreeModel? androidLargeThreeModelObj;

  @override
  List<Object?> get props => [
        editTextController,
        selectedDropDownValue,
        androidLargeThreeModelObj,
      ];
  AndroidLargeThreeState copyWith({
    TextEditingController? editTextController,
    SelectionPopupModel? selectedDropDownValue,
    AndroidLargeThreeModel? androidLargeThreeModelObj,
  }) {
    return AndroidLargeThreeState(
      editTextController: editTextController ?? this.editTextController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      androidLargeThreeModelObj:
          androidLargeThreeModelObj ?? this.androidLargeThreeModelObj,
    );
  }
}

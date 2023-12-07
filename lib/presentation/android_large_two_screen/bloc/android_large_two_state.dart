// ignore_for_file: must_be_immutable

part of 'android_large_two_bloc.dart';

/// Represents the state of AndroidLargeTwo in the application.
class AndroidLargeTwoState extends Equatable {
  AndroidLargeTwoState({
    this.materialsymbolsreadmoreController,
    this.androidLargeTwoModelObj,
  });

  TextEditingController? materialsymbolsreadmoreController;

  AndroidLargeTwoModel? androidLargeTwoModelObj;

  @override
  List<Object?> get props => [
        materialsymbolsreadmoreController,
        androidLargeTwoModelObj,
      ];
  AndroidLargeTwoState copyWith({
    TextEditingController? materialsymbolsreadmoreController,
    AndroidLargeTwoModel? androidLargeTwoModelObj,
  }) {
    return AndroidLargeTwoState(
      materialsymbolsreadmoreController: materialsymbolsreadmoreController ??
          this.materialsymbolsreadmoreController,
      androidLargeTwoModelObj:
          androidLargeTwoModelObj ?? this.androidLargeTwoModelObj,
    );
  }
}

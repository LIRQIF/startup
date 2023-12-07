import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/androidlargefour_item_model.dart';
import 'package:sabung_pinjol/presentation/android_large_four_screen/models/android_large_four_model.dart';
part 'android_large_four_event.dart';
part 'android_large_four_state.dart';

/// A bloc that manages the state of a AndroidLargeFour according to the event that is dispatched to it.
class AndroidLargeFourBloc
    extends Bloc<AndroidLargeFourEvent, AndroidLargeFourState> {
  AndroidLargeFourBloc(AndroidLargeFourState initialState)
      : super(initialState) {
    on<AndroidLargeFourInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AndroidLargeFourInitialEvent event,
    Emitter<AndroidLargeFourState> emit,
  ) async {
    emit(state.copyWith(
        androidLargeFourModelObj: state.androidLargeFourModelObj?.copyWith(
            androidlargefourItemList: fillAndroidlargefourItemList())));
  }

  List<AndroidlargefourItemModel> fillAndroidlargefourItemList() {
    return [
      AndroidlargefourItemModel(akulaku: "Akulaku", one: "0,1%"),
      AndroidlargefourItemModel(akulaku: "Akulaku", one: "0,1%"),
      AndroidlargefourItemModel(akulaku: "Akulaku", one: "0,1%"),
      AndroidlargefourItemModel(akulaku: "Akulaku", one: "0,1%")
    ];
  }
}

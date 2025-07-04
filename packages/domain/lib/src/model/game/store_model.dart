import 'package:freezed_annotation/freezed_annotation.dart';

part 'store_model.freezed.dart';

@freezed
class StoreModel with _$StoreModel {
  const factory StoreModel({
    @Default(StoreDetailsModel()) StoreDetailsModel store,
  }) = _StoreModel;
}

@freezed
class StoreDetailsModel with _$StoreDetailsModel {
  const factory StoreDetailsModel({
    @Default(0) int id,
    @Default('') String name,
    @Default('') String slug,
  }) = _StoreDetailsModel;
}

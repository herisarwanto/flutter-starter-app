import 'package:freezed_annotation/freezed_annotation.dart';

part 'store_data.freezed.dart';
part 'store_data.g.dart';

@freezed
class StoreData with _$StoreData {
  const factory StoreData({
    StoreDetailsData? store,
  }) = _StoreData;

  factory StoreData.fromJson(Map<String, dynamic> json) =>
      _$StoreDataFromJson(json);
}

@freezed
class StoreDetailsData with _$StoreDetailsData {
  const factory StoreDetailsData({
    int? id,
    String? name,
    String? slug,
  }) = _StoreDetailsData;

  factory StoreDetailsData.fromJson(Map<String, dynamic> json) =>
      _$StoreDetailsDataFromJson(json);
}

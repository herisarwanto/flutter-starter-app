import 'package:freezed_annotation/freezed_annotation.dart';

part 'added_by_status_data.freezed.dart';
part 'added_by_status_data.g.dart';

@freezed
class AddedByStatusData with _$AddedByStatusData {
  const factory AddedByStatusData({
    int? yet,
    int? owned,
    int? beaten,
    int? toPlay,
  }) = _AddedByStatusData;

  factory AddedByStatusData.fromJson(Map<String, dynamic> json) =>
      _$AddedByStatusDataFromJson(json);
}

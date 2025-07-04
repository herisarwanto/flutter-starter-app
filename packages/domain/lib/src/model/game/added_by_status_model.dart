import 'package:freezed_annotation/freezed_annotation.dart';

part 'added_by_status_model.freezed.dart';

@freezed
class AddedByStatusModel with _$AddedByStatusModel {
  const factory AddedByStatusModel({
    @Default(0) int yet,
    @Default(0) int owned,
    @Default(0) int beaten,
    @Default(0) int toPlay,
  }) = _AddedByStatusModel;
}

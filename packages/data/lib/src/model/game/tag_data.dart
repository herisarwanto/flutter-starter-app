import 'package:freezed_annotation/freezed_annotation.dart';

part 'tag_data.freezed.dart';
part 'tag_data.g.dart';

@freezed
class TagData with _$TagData {
  const factory TagData({
    int? id,
    String? name,
    String? slug,
    String? language,
    int? gamesCount,
    String? imageBackground,
  }) = _TagData;

  factory TagData.fromJson(Map<String, dynamic> json) =>
      _$TagDataFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'platform_data.dart';
import 'store_data.dart';
import 'rating_data.dart';
import 'added_by_status_data.dart';
import 'tag_data.dart';
import 'short_screenshot_data.dart';
import 'parent_platform_data.dart';
import 'genre_data.dart';

part 'game_data.freezed.dart';

part 'game_data.g.dart';

@freezed
class GameData with _$GameData {
  const factory GameData({
    String? slug,
    String? name,
    int? playtime,
    List<PlatformData>? platforms,
    List<StoreData>? stores,
    String? released,
    bool? tba,
    @JsonKey(name: 'background_image') String? backgroundImage,
    double? rating,
    @JsonKey(name: 'rating_top') int? ratingTop,
    List<RatingData>? ratings,
    @JsonKey(name: 'ratings_count') int? ratingsCount,
    @JsonKey(name: 'reviews_text_count') int? reviewsTextCount,
    int? added,
    @JsonKey(name: 'added_by_status') AddedByStatusData? addedByStatus,
    @JsonKey(name: 'suggestions_count') int? suggestionsCount,
    String? updated,
    int? id,
    double? score,
    dynamic clip,
    List<TagData>? tags,
    dynamic metacritic,
    @JsonKey(name: 'reviews_count') int? reviewsCount,
    @JsonKey(name: 'community_rating') int? communityRating,
    @JsonKey(name: 'saturated_color') String? saturatedColor,
    @JsonKey(name: 'dominant_color') String? dominantColor,
    @JsonKey(name: 'short_screenshots')
    List<ShortScreenshotData>? shortScreenshots,
    @JsonKey(name: 'parent_platforms')
    List<ParentPlatformData>? parentPlatforms,
    List<GenreData>? genres,
  }) = _GameData;

  factory GameData.fromJson(Map<String, dynamic> json) =>
      _$GameDataFromJson(json);
}

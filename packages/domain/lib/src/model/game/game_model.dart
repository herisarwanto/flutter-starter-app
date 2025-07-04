import 'package:domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_model.freezed.dart';

@freezed
class GameModel with _$GameModel {
  const factory GameModel({
    @Default('') String slug,
    @Default('') String name,
    @Default(0) int playtime,
    @Default([]) List<PlatformDetailsModel> platforms,
    @Default(<StoreModel>[]) List<StoreModel> stores,
    @Default('') String released,
    @Default(false) bool tba,
    @Default('') String backgroundImage,
    @Default(0.0) double rating,
    @Default(0) int ratingTop,
    @Default(<RatingModel>[]) List<RatingModel> ratings,
    @Default(0) int ratingsCount,
    @Default(0) int reviewsTextCount,
    @Default(0) int added,
    @Default(AddedByStatusModel()) AddedByStatusModel addedByStatus,
    @Default(0) int suggestionsCount,
    @Default('') String updated,
    @Default(0) int id,
    @Default(0.0) double score,
    dynamic clip,
    @Default(<TagModel>[]) List<TagModel> tags,
    dynamic metacritic,
    @Default(0) int reviewsCount,
    @Default(0) int communityRating,
    @Default('') String saturatedColor,
    @Default('') String dominantColor,
    @Default(<ShortScreenshotModel>[])
    List<ShortScreenshotModel> shortScreenshots,
    @Default([]) List<PlatformDetailsModel> parentPlatforms,
    @Default(<GenreModel>[]) List<GenreModel> genres,
  }) = _GameModel;
}

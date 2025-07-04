import 'package:data/src/model/game/game_data.dart';
import 'package:data/src/repository/mapper/added_by_status_mapper.dart';
import 'package:data/src/repository/mapper/genre_mapper.dart';
import 'package:data/src/repository/mapper/platform_details_mapper.dart';
import 'package:data/src/repository/mapper/rating_mapper.dart';
import 'package:data/src/repository/mapper/short_screenshot_mapper.dart';
import 'package:data/src/repository/mapper/store_mapper.dart';
import 'package:data/src/repository/mapper/tag_mapper.dart';
import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class GameMapper {
  final PlatformDetailsMapper platformDetailsMapper;
  final StoreMapper storeMapper;
  final RatingMapper ratingMapper;
  final AddedByStatusMapper addedByStatusMapper;
  final TagMapper tagMapper;
  final ShortScreenshotMapper shortScreenshotMapper;
  final GenreMapper genreMapper;

  const GameMapper({
    required this.platformDetailsMapper,
    required this.storeMapper,
    required this.ratingMapper,
    required this.addedByStatusMapper,
    required this.tagMapper,
    required this.shortScreenshotMapper,
    required this.genreMapper,
  });

  GameModel mapFromData(GameData? data) {
    if (data == null) {
      return const GameModel();
    }
    return GameModel(
      slug: data.slug ?? '',
      name: data.name ?? '',
      playtime: data.playtime ?? 0,
      platforms: data.platforms
              ?.map((e) => platformDetailsMapper.mapFromData(e.platform))
              .toList() ??
          [],
      stores:
          data.stores?.map((e) => storeMapper.mapFromData(e)).toList() ?? [],
      released: data.released ?? '',
      tba: data.tba ?? false,
      backgroundImage: data.backgroundImage ?? '',
      rating: data.rating ?? 0.0,
      ratingTop: data.ratingTop ?? 0,
      ratings:
          data.ratings?.map((e) => ratingMapper.mapFromData(e)).toList() ?? [],
      ratingsCount: data.ratingsCount ?? 0,
      reviewsTextCount: data.reviewsTextCount ?? 0,
      added: data.added ?? 0,
      addedByStatus: addedByStatusMapper.mapFromData(data.addedByStatus),
      suggestionsCount: data.suggestionsCount ?? 0,
      updated: data.updated ?? '',
      id: data.id ?? 0,
      score: data.score ?? 0.0,
      clip: data.clip,
      tags: data.tags?.map((e) => tagMapper.mapFromData(e)).toList() ?? [],
      metacritic: data.metacritic,
      reviewsCount: data.reviewsCount ?? 0,
      communityRating: data.communityRating ?? 0,
      saturatedColor: data.saturatedColor ?? '',
      dominantColor: data.dominantColor ?? '',
      shortScreenshots: data.shortScreenshots
              ?.map((e) => shortScreenshotMapper.mapFromData(e))
              .toList() ??
          [],
      parentPlatforms: data.parentPlatforms
              ?.map((e) => platformDetailsMapper.mapFromData(e.platform))
              .toList() ??
          [],
      genres:
          data.genres?.map((e) => genreMapper.mapFromData(e)).toList() ?? [],
    );
  }
}

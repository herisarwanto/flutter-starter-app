import 'package:data/src/model/game/tag_data.dart';
import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class TagMapper {
  const TagMapper();

  TagModel mapFromData(TagData? data) {
    if (data == null) {
      return const TagModel();
    }
    return TagModel(
      id: data.id ?? 0,
      name: data.name ?? '',
      slug: data.slug ?? '',
      language: data.language ?? '',
      gamesCount: data.gamesCount ?? 0,
      imageBackground: data.imageBackground ?? '',
    );
  }
}

import 'package:data/src/model/game/genre_data.dart';
import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class GenreMapper {
  const GenreMapper();

  GenreModel mapFromData(GenreData? data) {
    if (data == null) {
      return const GenreModel();
    }
    return GenreModel(
      id: data.id ?? 0,
      name: data.name ?? '',
      slug: data.slug ?? '',
    );
  }
}

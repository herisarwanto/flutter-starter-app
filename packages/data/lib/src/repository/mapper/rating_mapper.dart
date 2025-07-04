import 'package:data/src/model/game/rating_data.dart';
import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class RatingMapper {
  const RatingMapper();

  RatingModel mapFromData(RatingData? data) {
    if (data == null) {
      return const RatingModel();
    }
    return RatingModel(
      id: data.id ?? 0,
      title: data.title ?? '',
      count: data.count ?? 0,
      percent: data.percent ?? 0.0,
    );
  }
}

import 'package:data/src/model/game/store_data.dart';
import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class StoreMapper {
  const StoreMapper();

  StoreModel mapFromData(StoreData? data) {
    if (data == null) {
      return const StoreModel();
    }
    return StoreModel(
      store: const StoreDetailsMapper().mapFromData(data.store),
    );
  }
}

@Injectable()
class StoreDetailsMapper {
  const StoreDetailsMapper();

  StoreDetailsModel mapFromData(StoreDetailsData? data) {
    if (data == null) {
      return const StoreDetailsModel();
    }
    return StoreDetailsModel(
      id: data.id ?? 0,
      name: data.name ?? '',
      slug: data.slug ?? '',
    );
  }
}

import 'package:data/src/model/game/platform_data.dart';
import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class PlatformDetailsMapper {
  const PlatformDetailsMapper();

  PlatformDetailsModel mapFromData(PlatformDetailsData? data) {
    if (data == null) {
      return const PlatformDetailsModel();
    }
    return PlatformDetailsModel(
      id: data.id ?? 0,
      name: data.name ?? '',
      slug: data.slug ?? '',
    );
  }
}

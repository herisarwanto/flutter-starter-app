import 'package:data/src/model/game/short_screenshot_data.dart';
import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class ShortScreenshotMapper {
  const ShortScreenshotMapper();

  ShortScreenshotModel mapFromData(ShortScreenshotData? data) {
    if (data == null) {
      return const ShortScreenshotModel();
    }
    return ShortScreenshotModel(
      id: data.id ?? 0,
      image: data.image ?? '',
    );
  }
}

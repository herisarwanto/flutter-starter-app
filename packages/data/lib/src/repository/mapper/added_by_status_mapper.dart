import 'package:data/src/model/game/added_by_status_data.dart';
import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class AddedByStatusMapper {
  const AddedByStatusMapper();

  AddedByStatusModel mapFromData(AddedByStatusData? data) {
    if (data == null) {
      return const AddedByStatusModel();
    }

    return AddedByStatusModel(
      beaten: data.beaten ?? 0,
      owned: data.owned ?? 0,
      toPlay: data.owned ?? 0,
      yet: data.yet ?? 0,
    );
  }
}

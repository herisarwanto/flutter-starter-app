import 'package:common/common.dart';
import 'package:injectable/injectable.dart';

abstract class DataSourceConfig {
  String get restGameOnlineBaseUrl;

  String get restGameApiKey;
}

@Environment(developmentName)
@Injectable(as: DataSourceConfig)
class DebugDataSourceConfig extends DataSourceConfig {
  @override
  String get restGameOnlineBaseUrl => 'https://api.rawg.io/api';

  @override
  String get restGameApiKey => '7d09ea6b518e42d6ad5ac39b24534711';
}

@Environment(stagingName)
@Injectable(as: DataSourceConfig)
class StagingDataSourceConfig extends DataSourceConfig {
  @override
  String get restGameOnlineBaseUrl => 'https://api.rawg.io/api';

  @override
  String get restGameApiKey => '7d09ea6b518e42d6ad5ac39b24534711';
}

@Environment(productionName)
@Injectable(as: DataSourceConfig)
class ProductionDataSourceConfig extends DataSourceConfig {
  @override
  String get restGameOnlineBaseUrl => 'https://api.rawg.io/api';

  @override
  String get restGameApiKey => '7d09ea6b518e42d6ad5ac39b24534711';
}

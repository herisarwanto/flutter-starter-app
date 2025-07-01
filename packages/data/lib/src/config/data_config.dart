import 'package:common/common.dart';
import 'package:injectable/injectable.dart';

import '../di/di.dart' as di;

class DataConfig extends Config {
  DataConfig._();

  factory DataConfig.getInstance() {
    return _instance;
  }

  static final DataConfig _instance = DataConfig._();

  @override
  Future<bool> config({
    required Environment environment,
  }) async {
    await di.configureInjection(environment: environment);
    return Future.value(true);
  }
}

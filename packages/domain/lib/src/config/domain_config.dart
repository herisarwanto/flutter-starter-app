import 'package:common/common.dart';
import 'package:injectable/injectable.dart';

import '../di/di.dart' as di;

class DomainConfig extends Config {
  DomainConfig._();

  factory DomainConfig.getInstance() {
    return _instance;
  }

  static final DomainConfig _instance = DomainConfig._();

  @override
  Future<bool> config({
    required Environment environment,
  }) async {
    await di.configureInjection(environment: environment);
    return Future.value(true);
  }
}

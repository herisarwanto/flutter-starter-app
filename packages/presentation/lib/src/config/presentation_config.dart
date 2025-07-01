import 'package:common/common.dart';
import 'package:injectable/injectable.dart';

import '../di/di.dart' as di;

class PresentationConfig extends Config {
  PresentationConfig._();

  factory PresentationConfig.getInstance() {
    return _instance;
  }

  static final PresentationConfig _instance = PresentationConfig._();

  @override
  Future<bool> config({
    required Environment environment,
  }) async {
    await di.configureInjection(environment: environment);
    return Future.value(true);
  }
}

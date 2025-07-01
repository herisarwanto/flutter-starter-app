import 'package:common/common.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'di.config.dart';

final GetIt getIt = GetIt.instance;

@injectableInit
Future<void> configureInjection({
  Environment environment = environmentDevelopment,
}) async =>
    getIt.init(environment: environment.name);

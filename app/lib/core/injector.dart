import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';
import 'package:presentation/presentation.dart';

Future<void> configureDependencies(Environment environment) async {
  await DataConfig.getInstance().init(environment: environment);
  await DomainConfig.getInstance().init(environment: environment);
  await PresentationConfig.getInstance().init(environment: environment);
}

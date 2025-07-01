import 'package:injectable/injectable.dart';
import 'package:presentation/presentation.dart';

Future<void> configureDependencies(Environment environment) async {
  await PresentationConfig.getInstance().init(environment: environment);
}

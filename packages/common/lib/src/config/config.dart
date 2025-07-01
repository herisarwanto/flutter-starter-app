import 'package:async/async.dart';
import 'package:common/common.dart';
import 'package:injectable/injectable.dart';

abstract class Config {
  final _asyncMemoizer = AsyncMemoizer<bool>();

  Future<bool> config({
    required Environment environment,
  });

  Future<bool> init({
    Environment environment = environmentDevelopment,
  }) =>
      _asyncMemoizer.runOnce(
        () => config(
          environment: environment,
        ),
      );
}

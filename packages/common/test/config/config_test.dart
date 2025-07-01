import 'package:common/common.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' hide test;

class TestConfig extends Config {
  @override
  Future<bool> config({
    required Environment environment,
  }) {
    return Future.value(true);
  }
}

void main() {
  group('Config', () {
    final config = TestConfig();

    setUp(() {});

    test('when init is called, should return config function', () async {
      // When
      final result = await config.init();

      // Expect
      expect(result, true);
    });

    tearDown(() {});
  });
}

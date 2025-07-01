import 'package:app/app.dart';
import 'package:app/core/injector.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies(environmentDevelopment);

  runApp(const MainApp(
    title: 'Dev',
  ));
}

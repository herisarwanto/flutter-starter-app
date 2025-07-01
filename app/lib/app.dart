import 'package:app/core/router/app_router.dart';
import 'package:flutter/material.dart';

class MainApp extends StatefulWidget {
  final String title;

  const MainApp({
    super.key,
    required this.title,
  });

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
    );
  }
}

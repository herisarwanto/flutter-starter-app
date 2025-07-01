import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:presentation/presentation.dart';

@Injectable(as: HomeRouteProvider)
class HomeRouteProviderImpl implements HomeRouteProvider {
  @override
  HomeRoute route() {
    return const HomeRoute();
  }
}

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('Home Page')));
  }
}

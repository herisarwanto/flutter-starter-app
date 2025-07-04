import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:presentation/presentation.dart';
import 'package:presentation/src/bloc/dashboard_bloc.dart';
import 'package:presentation/src/pages/games_list.dart';

@Injectable(as: DashboardRouteProvider)
class DashboardRouteProviderImpl implements DashboardRouteProvider {
  @override
  DashboardRoute route() {
    return const DashboardRoute();
  }
}

@RoutePage()
class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (_) =>
            GetIt.I.get<DashboardBloc>()..add(const DashboardEvent.init()),
        child: const GamesList(),
      ),
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:presentation/presentation.dart';
part 'app_router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
  modules: [
    PresentationRouter,
  ],
)
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: dashboardRouteName,
          page: DashboardRoute.page,
        ),
      ];
}

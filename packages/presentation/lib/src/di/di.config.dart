// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:domain/domain.dart' as _i494;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:presentation/presentation.dart' as _i56;
import 'package:presentation/src/bloc/dashboard_bloc.dart' as _i225;
import 'package:presentation/src/pages/dashboard_page.dart' as _i313;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i56.DashboardRouteProvider>(
        () => _i313.DashboardRouteProviderImpl());
    gh.factory<_i225.DashboardBloc>(() =>
        _i225.DashboardBloc(getGamesUseCase: gh<_i494.GetGamesUseCase>()));
    return this;
  }
}

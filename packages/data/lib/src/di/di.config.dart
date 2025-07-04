// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:data/src/config/data_source_config.dart' as _i981;
import 'package:data/src/data_source/game_remote_data_source.dart' as _i21;
import 'package:data/src/di/register_module.dart' as _i770;
import 'package:data/src/repository/game_repository_impl.dart' as _i765;
import 'package:data/src/repository/mapper/added_by_status_mapper.dart'
    as _i1027;
import 'package:data/src/repository/mapper/game_mapper.dart' as _i715;
import 'package:data/src/repository/mapper/game_output_mapper.dart' as _i664;
import 'package:data/src/repository/mapper/genre_mapper.dart' as _i216;
import 'package:data/src/repository/mapper/platform_details_mapper.dart'
    as _i61;
import 'package:data/src/repository/mapper/rating_mapper.dart' as _i987;
import 'package:data/src/repository/mapper/short_screenshot_mapper.dart'
    as _i420;
import 'package:data/src/repository/mapper/store_mapper.dart' as _i294;
import 'package:data/src/repository/mapper/tag_mapper.dart' as _i402;
import 'package:dio/dio.dart' as _i361;
import 'package:domain/domain.dart' as _i494;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

const String _dev = 'dev';
const String _staging = 'staging';
const String _production = 'production';

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
    final registerModule = _$RegisterModule();
    gh.factory<_i420.ShortScreenshotMapper>(
        () => const _i420.ShortScreenshotMapper());
    gh.factory<_i1027.AddedByStatusMapper>(
        () => const _i1027.AddedByStatusMapper());
    gh.factory<_i987.RatingMapper>(() => const _i987.RatingMapper());
    gh.factory<_i402.TagMapper>(() => const _i402.TagMapper());
    gh.factory<_i216.GenreMapper>(() => const _i216.GenreMapper());
    gh.factory<_i61.PlatformDetailsMapper>(
        () => const _i61.PlatformDetailsMapper());
    gh.factory<_i294.StoreMapper>(() => const _i294.StoreMapper());
    gh.factory<_i294.StoreDetailsMapper>(
        () => const _i294.StoreDetailsMapper());
    gh.lazySingleton<_i361.Dio>(() => registerModule.dio());
    gh.factory<_i981.DataSourceConfig>(
      () => _i981.DebugDataSourceConfig(),
      registerFor: {_dev},
    );
    gh.factory<_i981.DataSourceConfig>(
      () => _i981.StagingDataSourceConfig(),
      registerFor: {_staging},
    );
    gh.lazySingleton<_i21.GameRemoteDataSource>(() => _i21.GameRemoteDataSource(
          gh<_i361.Dio>(),
          gh<_i981.DataSourceConfig>(),
        ));
    gh.factory<_i715.GameMapper>(() => _i715.GameMapper(
          platformDetailsMapper: gh<_i61.PlatformDetailsMapper>(),
          storeMapper: gh<_i294.StoreMapper>(),
          ratingMapper: gh<_i987.RatingMapper>(),
          addedByStatusMapper: gh<_i1027.AddedByStatusMapper>(),
          tagMapper: gh<_i402.TagMapper>(),
          shortScreenshotMapper: gh<_i420.ShortScreenshotMapper>(),
          genreMapper: gh<_i216.GenreMapper>(),
        ));
    gh.factory<_i664.GameOutputMapper>(
        () => _i664.GameOutputMapper(gameMapper: gh<_i715.GameMapper>()));
    gh.lazySingleton<_i494.GameRepository>(() => _i765.GameRepositoryImpl(
          dataSourceConfig: gh<_i981.DataSourceConfig>(),
          gameRemoteDataSource: gh<_i21.GameRemoteDataSource>(),
          gameOutputMapper: gh<_i664.GameOutputMapper>(),
        ));
    gh.factory<_i981.DataSourceConfig>(
      () => _i981.ProductionDataSourceConfig(),
      registerFor: {_production},
    );
    return this;
  }
}

class _$RegisterModule extends _i770.RegisterModule {}

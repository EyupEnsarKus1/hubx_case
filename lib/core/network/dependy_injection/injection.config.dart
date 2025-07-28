// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../../features/home/data/data_source/home_remote_data_source.dart'
    as _i703;
import '../../../features/home/data/repository/home_repository_impl.dart'
    as _i152;
import '../../../features/home/domain/repository/home_repository.dart'
    as _i1023;
import '../../../features/home/domain/usescases/get_questions_use_case.dart'
    as _i1060;
import '../../services/internett_connection_service.dart' as _i516;
import 'injection.dart' as _i464;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final registerModule = _$RegisterModule();
    gh.factory<_i1060.GetQuestionsUseCase>(() => _i1060.GetQuestionsUseCase());
    gh.singleton<_i361.Dio>(() => registerModule.dio);
    gh.singleton<_i516.InternetCheckService>(
      () => _i516.InternetCheckService(),
    );
    gh.factory<_i703.HomeRemoteDataSource>(
      () => _i703.HomeRemoteDataSourceImpl(gh<_i361.Dio>()),
    );
    gh.factory<_i1023.HomeRepository>(
      () => _i152.HomeRepositoryImpl(gh<_i703.HomeRemoteDataSource>()),
    );
    return this;
  }
}

class _$RegisterModule extends _i464.RegisterModule {}

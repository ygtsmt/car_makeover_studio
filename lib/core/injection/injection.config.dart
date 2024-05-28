// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:car_makeover_studio/app/bloc/app_bloc.dart' as _i15;
import 'package:car_makeover_studio/app/data/app_usecase.dart' as _i11;
import 'package:car_makeover_studio/app/features/auth/login/bloc/login_bloc.dart'
    as _i16;
import 'package:car_makeover_studio/app/features/auth/login/data/login_usecase.dart'
    as _i12;
import 'package:car_makeover_studio/app/features/auth/splash/bloc/splash_bloc.dart'
    as _i14;
import 'package:car_makeover_studio/app/features/auth/splash/data/splash_usecase.dart'
    as _i9;
import 'package:car_makeover_studio/app/features/home/features/right_list/bloc/right_list_bloc.dart'
    as _i17;
import 'package:car_makeover_studio/app/features/home/features/right_list/data/right_list_usecase.dart'
    as _i13;
import 'package:car_makeover_studio/core/data_sources/http_data_source/http_data_source.dart'
    as _i6;
import 'package:car_makeover_studio/core/injection/modules/dio_module.dart'
    as _i18;
import 'package:car_makeover_studio/core/injection/modules/image_picker_module.dart'
    as _i20;
import 'package:car_makeover_studio/core/injection/modules/secure_storage_module.dart'
    as _i19;
import 'package:car_makeover_studio/core/routes/app_router.dart' as _i3;
import 'package:car_makeover_studio/core/routes/services/snackbar_service.dart'
    as _i8;
import 'package:car_makeover_studio/core/service/theme_service.dart' as _i10;
import 'package:dio/dio.dart' as _i4;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:image_picker/image_picker.dart' as _i7;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dioModule = _$DioModule();
    final secureStorageModule = _$SecureStorageModule();
    final imagePickerModule = _$ImagePickerModule();
    gh.factory<_i3.AppRouter>(() => _i3.AppRouter());
    gh.singleton<_i4.Dio>(() => dioModule.dio());
    gh.singleton<_i5.FlutterSecureStorage>(() => secureStorageModule.storage());
    gh.singleton<_i6.HttpDataSource>(() => _i6.HttpDataSource(gh<_i4.Dio>()));
    gh.factory<_i7.ImagePicker>(() => imagePickerModule.imagePicker());
    gh.factory<_i8.SnackBarService>(() => _i8.SnackBarService());
    gh.factory<_i9.SplashUseCase>(
        () => _i9.SplashUseCase(gh<_i6.HttpDataSource>()));
    gh.factory<_i10.ThemeService>(() => _i10.ThemeService());
    gh.factory<_i11.AppUseCase>(() => _i11.AppUseCase(
          gh<_i6.HttpDataSource>(),
          gh<_i8.SnackBarService>(),
        ));
    gh.factory<_i12.LoginUseCase>(() => _i12.LoginUseCase(
          gh<_i6.HttpDataSource>(),
          gh<_i8.SnackBarService>(),
        ));
    gh.factory<_i13.RightListUseCase>(() => _i13.RightListUseCase(
          gh<_i6.HttpDataSource>(),
          gh<_i8.SnackBarService>(),
        ));
    gh.singleton<_i14.SplashBloc>(
        () => _i14.SplashBloc(gh<_i9.SplashUseCase>()));
    gh.singleton<_i15.AppBloc>(() => _i15.AppBloc(gh<_i11.AppUseCase>()));
    gh.singleton<_i16.LoginBloc>(() => _i16.LoginBloc(
          gh<_i12.LoginUseCase>(),
          gh<_i11.AppUseCase>(),
        ));
    gh.singleton<_i17.RightListBloc>(
        () => _i17.RightListBloc(gh<_i13.RightListUseCase>()));
    return this;
  }
}

class _$DioModule extends _i18.DioModule {}

class _$SecureStorageModule extends _i19.SecureStorageModule {}

class _$ImagePickerModule extends _i20.ImagePickerModule {}

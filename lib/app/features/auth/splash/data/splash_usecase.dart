import "package:car_makeover_studio/core/data_sources/http_data_source/http_data_source.dart";
import "package:injectable/injectable.dart";

@injectable
class SplashUseCase {
  const SplashUseCase(this._httpDataSource);

  final HttpDataSource _httpDataSource;
}

import "package:car_makeover_studio/core/data_sources/http_data_source/http_data_source.dart";
import "package:car_makeover_studio/core/routes/services/snackbar_service.dart";
import "package:injectable/injectable.dart";

@injectable
class LoginUseCase {
  const LoginUseCase(this._httpDataSource, this._snackBarService);

  final HttpDataSource _httpDataSource;
  final SnackBarService _snackBarService;
}

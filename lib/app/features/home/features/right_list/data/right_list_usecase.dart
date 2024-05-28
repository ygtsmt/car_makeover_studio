import 'package:car_makeover_studio/app/features/home/features/right_list/data/model/last_coin_dto.dart';
import 'package:car_makeover_studio/core/data_sources/http_data_source/http_data_source.dart';
import 'package:car_makeover_studio/core/enums.dart';
import 'package:car_makeover_studio/core/extensions.dart';
import 'package:car_makeover_studio/core/routes/services/snackbar_service.dart';
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';

@injectable
class RightListUseCase {
  RightListUseCase(this._httpDataSource, this._snackBarService);

  final HttpDataSource _httpDataSource;
  final SnackBarService _snackBarService;

  Future<SimpleResult<LastCoinResponseModel>>  getRights() async {
    try {
      final result = await _httpDataSource.request(
        RequestMethod.get,
        "/api/Right/GetRightByGarageId?garageId",
      );

      final List<Map<String, dynamic>>? data = result.data['data'];
      if (data != null) {
        final List<LastCoinDto> rights = data.map((item) => LastCoinDto.fromJson(item)).toList();
        print(rights);
        return  SimpleResult(
          isSuccess: true, data: LastCoinResponseModel.fromJson(result.data));
      } else {
        return  SimpleResult(
          isSuccess: false);
      }
    } catch (e) {
      final errorMessage = e.getHttpErrorMessage();
      _snackBarService.showSnackBar(errorMessage);
      return SimpleResult(
        isSuccess: false,
        errorMessage: e.toString(),
      );
    }
  }


  /*   try {
      var response = await _httpHelper.connect(
        CustomerServicePath.customerFavoritePairs.httpType,
        url: 'https://bff.arbitex.com/market/GetLastCoins',
      );
      return SimpleResult(
          isSuccess: true, data: LastCoinResponseModel.fromJson(response.data));
    } catch (e) {
      return SimpleResult(
        isSuccess: false,
        errorMessage: e.toString(),
      );
    } */
}
class SimpleResult<T> {
  final bool isSuccess;
  final int errorType;
  final String? errorMessage;
  final T? data;

  SimpleResult(
      {required this.isSuccess,
      this.errorType = 0,
      this.errorMessage,
      this.data});
}
class LastCoinResponseModel {
  String? status;
  String? message;
  List<LastCoinDto>? data;

  LastCoinResponseModel({this.status, this.message, this.data});

  LastCoinResponseModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = <LastCoinDto>[];
      json['data'].forEach((v) {
        data!.add(LastCoinDto.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['message'] = message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
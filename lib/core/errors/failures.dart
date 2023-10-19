import 'package:dio/dio.dart';

abstract class Failures {
  final String errMessage;

  Failures({required this.errMessage});
}

class ServerFailure extends Failures {
  ServerFailure({required super.errMessage});

  factory ServerFailure.fromDioExption(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(errMessage: 'Connection timeout with ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailure(errMessage: 'Send timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure(errMessage: 'Receive timeout with ApiServer');
      case DioExceptionType.badCertificate:
      // TODO: Handle this case.
      case DioExceptionType.badResponse:
        return ServerFailure.fromDioResponse(
            dioException.response!.statusCode!, dioException.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure(errMessage: 'Request to api was canceled');
      case DioExceptionType.connectionError:
        return ServerFailure(errMessage: 'Check your internet');
      case DioExceptionType.unknown:
        return ServerFailure(errMessage: 'Unexpected Case');
      default:
        return ServerFailure(
            errMessage: 'Oops! there was an error, please try again');
    }
  }

  factory ServerFailure.fromDioResponse(int statecode, dynamic response) {
    if (statecode == 400 || statecode == 401 || statecode == 403) {
      return ServerFailure(errMessage: response['error']['messaage']);
    } else if (statecode == 404) {
      return ServerFailure(errMessage: 'Method Not Found, Please Try Later!');
    } else if (statecode == 405) {
      return ServerFailure(
          errMessage: 'Internal Server Error, Please Try Later!');
    } else {
      return ServerFailure(
          errMessage: 'Oops! there was an error, please try later');
    }
  }
}

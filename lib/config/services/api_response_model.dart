import 'dart:convert';

import 'data_parser_service.dart';
class ApiResponseModel {
  int? expires;
  int? status;
  String token;
  dynamic data;
  bool isSuccess;
  String message;
  int? statusCode;

  ApiResponseModel({this.isSuccess = true, this.expires, this.status,required this.token, required this.data, this.message = ''});

  ApiResponseModel copyWith({
    String? expires,
    String? status,
    String? token,
    dynamic data,
  }) {
    return ApiResponseModel(
        expires: this.expires,
        status: this.status,
        token: this.token,
        data: this.data);
  }

  Map<String, dynamic> toMap() {
    return {
      'expires': expires,
      'status': status,
      'token': token,
      'data': data,
    };
  }

  factory ApiResponseModel.fromMap(map) {
    if (map is Map) {
      return ApiResponseModel(
        expires: dataParser.getInt(map['expires']),
        status: dataParser.getInt(map['status']),
        token: dataParser.getString(map['token']),
        message: dataParser.getString(map['message']),
        data: dataParser.getMap(map),
      );
    } else {
      return ApiResponseModel(
        expires: 0,
        status: 0,
        token: "",
        data: map as List<dynamic>,
      );
    }
  }

  String toJson() => json.encode(toMap());

  factory ApiResponseModel.fromJson(String source) {
    var data = json.decode(source);

    return ApiResponseModel.fromMap(data);
  }

  @override
  String toString() {
    return 'ApiResponseModel{expires: $expires, status: $status, token: $token, data: $data}';
  }
}

import 'package:turf_tender/data/datasource/dio_client.dart';

enum EndPoints { login, userSIgnup, userOtp }

extension EndPointsData on EndPoints {
  String path() {
    String path = "";
    switch (this) {
      case EndPoints.login:
        path = "";
      case EndPoints.userSIgnup:
        path = "/api/users/signup";
      case EndPoints.userOtp:
        path = "/api/users/signup/otp";
    }
    return path;
  }

  ReqType type() {
    ReqType type;
    switch (this) {
      case EndPoints.login:
        type = ReqType.POST;
      case EndPoints.userSIgnup:
        type = ReqType.POST;
      case EndPoints.userOtp:
        type = ReqType.POST;
    }
    return type;
  }

  bool hasToken() {
    bool token = false;
    switch (this) {
      case EndPoints.login:
        token = false;
      case EndPoints.userSIgnup:
        token = false;
      case EndPoints.userOtp:
        token = false;
    }
    return token;
  }
}

class OtpUserRes {
  String? error;
  UserOtp? userOtp;

  OtpUserRes({this.error, this.userOtp});

  OtpUserRes.fromJson(Map<String, dynamic> json) {
    error = json['error'];
    userOtp =
        json['userOtp'] != null ? new UserOtp.fromJson(json['userOtp']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['error'] = this.error;
    if (this.userOtp != null) {
      data['userOtp'] = this.userOtp!.toJson();
    }
    return data;
  }
}

class UserOtp {
  String? email;
  String? password;
  String? name;
  String? mobileNumber;
  String? avatar;
  bool? admin;
  String? otp;
  String? sId;
  int? iV;

  UserOtp(
      {this.email,
      this.password,
      this.name,
      this.mobileNumber,
      this.avatar,
      this.admin,
      this.otp,
      this.sId,
      this.iV});

  UserOtp.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    password = json['password'];
    name = json['name'];
    mobileNumber = json['mobileNumber'];
    avatar = json['avatar'];
    admin = json['admin'];
    otp = json['otp'];
    sId = json['_id'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['email'] = this.email;
    data['password'] = this.password;
    data['name'] = this.name;
    data['mobileNumber'] = this.mobileNumber;
    data['avatar'] = this.avatar;
    data['admin'] = this.admin;
    data['otp'] = this.otp;
    data['_id'] = this.sId;
    data['__v'] = this.iV;
    return data;
  }
}

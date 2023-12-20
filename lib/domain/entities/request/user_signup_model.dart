class UserSignUp {
  String? error;
  String? email;
  String? password;
  String? name;
  String? mobileNumber;
  String? avatar;
  String? otp;

  UserSignUp(
      {this.error,
      this.email,
      this.password,
      this.name,
      this.mobileNumber,
      this.avatar,
      this.otp});

  UserSignUp.fromJson(Map<String, dynamic> json) {
    error = json['error'];
    email = json['email'];
    password = json['password'];
    name = json['name'];
    mobileNumber = json['mobileNumber'];
    avatar = json['avatar'];
    otp = json['otp'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['error'] = this.error;
    data['email'] = this.email;
    data['password'] = this.password;
    data['name'] = this.name;
    data['mobileNumber'] = this.mobileNumber;
    data['avatar'] = this.avatar;
    data['otp'] = this.otp;
    return data;
  }
}

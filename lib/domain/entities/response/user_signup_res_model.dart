class UserSignUpRes {
  String? user;
  String? error;

  UserSignUpRes({this.user, this.error});

  UserSignUpRes.fromJson(Map<String, dynamic> json) {
    user = json['user'];
    error = json['error'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user'] = this.user;
    data['error'] = this.error;
    return data;
  }
}

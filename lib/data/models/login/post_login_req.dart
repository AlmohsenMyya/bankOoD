class PostLoginReq {
  String? username;
  String? password;

  PostLoginReq({this.username, this.password});

  PostLoginReq.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.username != null) {
      data['username'] = this.username;
    }
    if (this.password != null) {
      data['password'] = this.password;
    }
    return data;
  }
}

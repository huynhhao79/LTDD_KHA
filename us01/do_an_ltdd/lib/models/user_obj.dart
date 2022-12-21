class user {
  final String name;
  final String email;
  final int exp;
  final int rank;
  final int money;
  final String password;
  

  user(this.name, this.email, this.rank, this.exp, this.password, this.money);

  user.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        email = json['email'],
        rank = json['rank'],
        exp = json['exp'],
        password = json['password'],
        money = json['money'];

  Map<String, Object?> toJson() {
    return {
      'name': name,
      'email': email,
      'rank': rank,
      'exp': exp,
      'password': password,
      'money': money
    };
  }
}

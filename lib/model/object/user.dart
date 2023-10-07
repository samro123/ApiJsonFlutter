class User{
  String fulName;
  String email;
  User({required this.fulName, required this.email});

  factory User.fromJson(map){
    return User(
        fulName: map['fulName'],
        email: map['email'],
    );
  }
}
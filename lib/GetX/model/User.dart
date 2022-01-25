class User {
  User({
    required this.id,
    required this.name,
  });

  int id;
  String name;
  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json['id'],
        name: json['name'],
      );
}

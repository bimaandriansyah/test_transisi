class Employee {
  int id;
  String email;
  String firstName;
  String lastName;
  String? avatar;

  Employee({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    this.avatar,
  });

  factory Employee.fromJson(Map<String, dynamic> json) => Employee(
        id: json["id"],
        email: json["email"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        avatar: json["avatar"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "email": email,
        "first_name": firstName,
        "last_name": lastName,
        "avatar": avatar,
      };
}

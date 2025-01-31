class UserModel {
  final int id;
  final String name;
  final String email;
  final String avatarUrl;
  final DateTime registrationDate;

  UserModel({
    this.id,
    this.name,
    this.email,
    this.avatarUrl,
    this.registrationDate
  });

  factory UserModel.fromMap(Map<String, dynamic> data) {
    return UserModel(
      id: data['id'],
      name: data['name'],
      email: data['email'],
      avatarUrl: data['avatar_url'] ?? '',
      registrationDate: DateTime.parse(data['registrationDate']),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'avatar_url': avatarUrl,
      'registrationDate': registrationDate.toIso8601String(),
    };
  }
}
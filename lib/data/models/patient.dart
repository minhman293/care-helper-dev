class Patient {
  Patient({
    required this.phone,
    this.fullName,
    required this.password,
    this.gender,
    this.birthday,
    this.avatar,
    this.address,
    this.nationalIdCard,
    this.insurance,
    this.profesion,
  });

  final String phone;
  final String? fullName;
  final String password;
  final String? gender;
  final DateTime? birthday;
  final String? avatar;
  final String? address;
  final String? nationalIdCard;
  final String? insurance;
  final String? profesion;
}

class PatientResponse {
  PatientResponse({
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

  factory PatientResponse.fromJson(Map<String, dynamic> json) {
    return PatientResponse(
      phone: json['phone'] as String,
      fullName: json['fullName'] as String?,
      password: json['password'] as String,
      gender: json['gender'] as String?,
      birthday: (json['birthday'] as String?) == null
          ? null
          : DateTime.tryParse(json['birthday'] as String),
      avatar: json['avatar'] as String?,
      address: json['address'] as String?,
      nationalIdCard: json['nationalIdCard'] as String?,
      insurance: json['insurance'] as String?,
      profesion: json['profesion'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
        'phone': phone,
        'fullName': fullName,
        'password': password,
        'gender': gender,
        'birthday': birthday,
        'avatar': avatar,
        'address': address,
        'nationalIdCard': nationalIdCard,
        'insurance': insurance,
        'profesion': profesion,
  };
}

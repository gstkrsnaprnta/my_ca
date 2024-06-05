import 'package:my_ca/features/profile/domain/entities/profile.dart';

class ProfileModel extends Profile {
  final String firtsName;
  final String lastName;
  final String avatar;

  const ProfileModel({
    required super.id,
    required super.email,
    required this.lastName,
    required this.firtsName,
    required this.avatar,
  }) : super(fullName: "$firtsName $lastName", profileImageUrl: avatar);

  factory ProfileModel.fromJson(Map<String, dynamic> dataJson) {
    Map<String, dynamic> data = dataJson;
    return ProfileModel(
        id: data["id"],
        email: data["email"],
        lastName: data["last_name"],
        firtsName: data["firts_name"],
        avatar: data["avatar"]);
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "email": email,
      "firts_name": firtsName,
      "last_name": lastName,
      "avatar": avatar,
    };
  }
}

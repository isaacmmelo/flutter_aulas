// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:social_app/data/model/profile_model.dart';

class UserModel {
  String objectID;
  bool emailVerified;
  String userName;
  String password;
  String email;
  ProfileModel profile;
  UserModel({
    required this.objectID,
    required this.emailVerified,
    required this.userName,
    required this.password,
    required this.email,
    required this.profile,
  });

  UserModel copyWith({
    String? objectID,
    bool? emailVerified,
    String? userName,
    String? password,
    String? email,
    ProfileModel? profile,
  }) {
    return UserModel(
      objectID: objectID ?? this.objectID,
      emailVerified: emailVerified ?? this.emailVerified,
      userName: userName ?? this.userName,
      password: password ?? this.password,
      email: email ?? this.email,
      profile: profile ?? this.profile,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectID': objectID,
      'emailVerified': emailVerified,
      'userName': userName,
      'password': password,
      'email': email,
      'profile': profile.toMap(),
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      objectID: map['objectID'] as String,
      emailVerified: map['emailVerified'] as bool,
      userName: map['userName'] as String,
      password: map['password'] as String,
      email: map['email'] as String,
      profile: ProfileModel.fromMap(map['profile'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UserModel(objectID: $objectID, emailVerified: $emailVerified, userName: $userName, password: $password, email: $email, profile: $profile)';
  }

  @override
  bool operator ==(covariant UserModel other) {
    if (identical(this, other)) return true;

    return other.objectID == objectID &&
        other.emailVerified == emailVerified &&
        other.userName == userName &&
        other.password == password &&
        other.email == email &&
        other.profile == profile;
  }

  @override
  int get hashCode {
    return objectID.hashCode ^
        emailVerified.hashCode ^
        userName.hashCode ^
        password.hashCode ^
        email.hashCode ^
        profile.hashCode;
  }
}

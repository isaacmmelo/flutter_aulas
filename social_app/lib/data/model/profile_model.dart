// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:social_app/data/model/address_model.dart';

class ProfileModel {
  String objectID;
  String fullName;
  String image;
  String birthday;
  String cpf;
  AddressModel adress;
  String mainPhone;
  String secondPhone;
  bool blank;
  ProfileModel({
    required this.objectID,
    required this.fullName,
    required this.image,
    required this.birthday,
    required this.cpf,
    required this.adress,
    required this.mainPhone,
    required this.secondPhone,
    required this.blank,
  });

  ProfileModel copyWith({
    String? objectID,
    String? fullName,
    String? image,
    String? birthday,
    String? cpf,
    AddressModel? adress,
    String? mainPhone,
    String? secondPhone,
    bool? blank,
  }) {
    return ProfileModel(
      objectID: objectID ?? this.objectID,
      fullName: fullName ?? this.fullName,
      image: image ?? this.image,
      birthday: birthday ?? this.birthday,
      cpf: cpf ?? this.cpf,
      adress: adress ?? this.adress,
      mainPhone: mainPhone ?? this.mainPhone,
      secondPhone: secondPhone ?? this.secondPhone,
      blank: blank ?? this.blank,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectID': objectID,
      'fullName': fullName,
      'image': image,
      'birthday': birthday,
      'cpf': cpf,
      'adress': adress.toMap(),
      'mainPhone': mainPhone,
      'secondPhone': secondPhone,
      'blank': blank,
    };
  }

  factory ProfileModel.fromMap(Map<String, dynamic> map) {
    return ProfileModel(
      objectID: map['objectID'] as String,
      fullName: map['fullName'] as String,
      image: map['image'] as String,
      birthday: map['birthday'] as String,
      cpf: map['cpf'] as String,
      adress: AddressModel.fromMap(map['adress'] as Map<String, dynamic>),
      mainPhone: map['mainPhone'] as String,
      secondPhone: map['secondPhone'] as String,
      blank: map['blank'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProfileModel.fromJson(String source) =>
      ProfileModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ProfileModel(objectID: $objectID, fullName: $fullName, image: $image, birthday: $birthday, cpf: $cpf, adress: $adress, mainPhone: $mainPhone, secondPhone: $secondPhone, blank: $blank)';
  }

  @override
  bool operator ==(covariant ProfileModel other) {
    if (identical(this, other)) return true;

    return other.objectID == objectID &&
        other.fullName == fullName &&
        other.image == image &&
        other.birthday == birthday &&
        other.cpf == cpf &&
        other.adress == adress &&
        other.mainPhone == mainPhone &&
        other.secondPhone == secondPhone &&
        other.blank == blank;
  }

  @override
  int get hashCode {
    return objectID.hashCode ^
        fullName.hashCode ^
        image.hashCode ^
        birthday.hashCode ^
        cpf.hashCode ^
        adress.hashCode ^
        mainPhone.hashCode ^
        secondPhone.hashCode ^
        blank.hashCode;
  }
}

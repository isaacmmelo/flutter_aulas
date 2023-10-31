// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class AddressModel {
  String objectID;
  String country;
  String province;
  String city;
  String neighborhood;
  String address;
  String complement;
  bool blank;
  AddressModel({
    required this.objectID,
    required this.country,
    required this.province,
    required this.city,
    required this.neighborhood,
    required this.address,
    required this.complement,
    required this.blank,
  });

  AddressModel copyWith({
    String? objectID,
    String? country,
    String? province,
    String? city,
    String? neighborhood,
    String? address,
    String? complement,
    bool? blank,
  }) {
    return AddressModel(
      objectID: objectID ?? this.objectID,
      country: country ?? this.country,
      province: province ?? this.province,
      city: city ?? this.city,
      neighborhood: neighborhood ?? this.neighborhood,
      address: address ?? this.address,
      complement: complement ?? this.complement,
      blank: blank ?? this.blank,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectID': objectID,
      'country': country,
      'province': province,
      'city': city,
      'neighborhood': neighborhood,
      'address': address,
      'complement': complement,
      'blank': blank,
    };
  }

  factory AddressModel.fromMap(Map<String, dynamic> map) {
    return AddressModel(
      objectID: map['objectID'] as String,
      country: map['country'] as String,
      province: map['province'] as String,
      city: map['city'] as String,
      neighborhood: map['neighborhood'] as String,
      address: map['address'] as String,
      complement: map['complement'] as String,
      blank: map['blank'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory AddressModel.fromJson(String source) =>
      AddressModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'AddressModel(objectID: $objectID, country: $country, province: $province, city: $city, neighborhood: $neighborhood, address: $address, complement: $complement, blank: $blank)';
  }

  @override
  bool operator ==(covariant AddressModel other) {
    if (identical(this, other)) return true;

    return other.objectID == objectID &&
        other.country == country &&
        other.province == province &&
        other.city == city &&
        other.neighborhood == neighborhood &&
        other.address == address &&
        other.complement == complement &&
        other.blank == blank;
  }

  @override
  int get hashCode {
    return objectID.hashCode ^
        country.hashCode ^
        province.hashCode ^
        city.hashCode ^
        neighborhood.hashCode ^
        address.hashCode ^
        complement.hashCode ^
        blank.hashCode;
  }
}

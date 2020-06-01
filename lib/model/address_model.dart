import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'address.g.dart';

abstract class Address implements Built<Address, AddressBuilder> {
  Address._();
  factory Address([updates(AddressBuilder b)]) = _$Address;

  static Serializer<Address> get serializer => _$addressSerializer;

  int get id;
  String get neighborhood;
  String get city;
}

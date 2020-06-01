library person;

import 'dart:convert';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:vote_app/model/role_model.dart';

import 'address_model.dart';
import 'serializer/seriliazers.dart';

part 'person.g.dart';

abstract class Person implements Built<Person, PersonBuilder> {
  // fields go here
  int get id;
  String get name;
  String get surname;
  String get password;
  String get gender;
  String get email;
  String get lastIP;
  String get lastDevice;
  String get lastLocation;
  Address get address;
  int get age;
  int get nationId;
  BuiltList<Role> roleSet;

  Person._();

  factory Person([updates(PersonBuilder b)]) = _$Person;

  String toJson() {
    return json.encode(serializers.serializeWith(Person.serializer, this));
  }

  static Person fromJson(String jsonString) {
    return serializers.deserializeWith(
        Person.serializer, json.decode(jsonString));
  }

  static Serializer<Person> get serializer => _$PersonSerializer;
}

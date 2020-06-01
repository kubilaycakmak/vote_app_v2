import 'package:built_value/serializer.dart';

import '../address_model.dart';
import '../candidate_model.dart';
import '../election_model.dart';
import '../party_model.dart';
import '../person_model.dart';
import '../role_model.dart';
import '../score_model.dart';

import 'package:built_value/serializer.dart';

part 'serializers.g.dart';

@SerializersFor([Address, Candidate, ElectionModel, Party, Person, Role, Score])
final Serializers serializers = _$serializers;

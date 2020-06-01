import 'package:http/http.dart' as http;
import 'package:vote_app/model/election_model.dart';

Future<ElectionModel> getElections() async {
  final electionUrl = "http://localhost:8080/api/test/election";
  var response = await http.get(electionUrl);
  if (response.statusCode == 200) {
    return ElectionModel.fromJson(response.body);
  }
}

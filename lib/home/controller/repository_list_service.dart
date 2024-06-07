import 'dart:convert';
import 'package:http/http.dart' as http;

class RepositoryListService {
  Future<Map<String, dynamic>> returnList() async {
    print('here');
    final response = await http.get(
      Uri.parse(
        'https://api.github.com/search/repositories?q={query}{&page,per_page,sort,order}',
      ),
      headers: {'Content-Type': 'application/json'},
    );

    final Map<String, dynamic> data = json.decode(response.body);
    print('there $data');
    if (response.statusCode == 201 || response.statusCode == 406) {
      return data;
    } else {
      throw Exception(response.statusCode);
    }
  }
}

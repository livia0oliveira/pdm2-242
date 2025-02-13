import 'dart:convert';
import 'package:http/http.dart' as http;

class CatService {
  final String apiUrl = 'https://api.thecatapi.com/v1/images/search';
  final String apiKey = 'live_7QnaPjrDKNWqKdaHCPFkDwlQ2eKOolSYmXYb8APJO6mOmKiR2e5iHG4pkoirYP5P'; // Substitua pela sua chave da API

  Future<String> fetchCatImage() async {
    final response = await http.get(
      Uri.parse(apiUrl),
      headers: {
        'x-api-key': apiKey,
      },
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return data[0]['url'];
    } else {
      throw Exception('Failed to load cat image');
    }
  }
}

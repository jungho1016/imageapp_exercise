import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:imageapp_exercise/01_image_app/data/dto/pixabay_api_dto.dart';

class PixabayApi {
  Future<PixabayApiDto> getImage(String query) async {
    final url =
        'https://pixabay.com/api/?key=10711147-dc41758b93b263957026bdadb&q=$query&image_type=photo&pretty=true';
    http.Response response = await http.get(Uri.parse(url));
    Map<String, dynamic> jsonString = jsonDecode(response.body);
    return PixabayApiDto.fromJson(jsonString);
  }
}

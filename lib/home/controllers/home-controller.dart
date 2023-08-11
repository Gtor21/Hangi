import 'dart:convert';
import 'package:flutter_hangi/home/repositories/home-api-repository.dart';
import 'package:http/http.dart';
import '../models/character.dart';

class HomeController {
  final homeApiRepository = HomeRepository();

  Future<List<CharacterDTO>> getCharacters() async {
    final Response response = await homeApiRepository.getCharacters();
    List<CharacterDTO> characters = [];

    final bool validateStatusCode = response.statusCode == 200;
    if (validateStatusCode) {
      final Map dataFromAPI = jsonDecode(response.body);
      final List<dynamic> charactersResults = dataFromAPI["results"];

      characters = charactersResults
          .map((character) => CharacterDTO.fromJson(character))
          .toList();
    }
    return characters;
  }
}

final homeController = HomeController();

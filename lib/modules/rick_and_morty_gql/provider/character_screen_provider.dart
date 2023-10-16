import 'package:flutter/widgets.dart';
import 'package:proto_app/modules/rick_and_morty_gql/repository/character_repository.dart';

class CharacterScreenProvider extends ChangeNotifier{
  CharacterScreenProvider(CharacterRepository characterRepository) :
    _characterRepository = characterRepository;

  final CharacterRepository _characterRepository;

  List<CharacterModel> characters = [];

  Future<void> getCharacters()async{
    final res = await _characterRepository.getCharacters();
    characters = [ ...characters, ...res];
    notifyListeners();
  }



}




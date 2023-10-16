

import 'package:proto_app/modules/rick_and_morty_gql/services/graphql_services.dart';

class CharacterModel{
  String id;
  String name;
  String? image;

  CharacterModel(this.id, this.name, this.image);
}


class CharacterRepository {

  CharacterRepository( GQLService gqlService) : _gqlService  = gqlService {
    _gqlService.initGQLClient();
  }


  final GQLService _gqlService;


  Future<List<CharacterModel>> getCharacters() async {
    final characters = await _gqlService.fetch();
    if (characters == null) return [];
    final results = characters.results;
    if (results == null) return [];

    final resSet = results.map((p0) 
      => CharacterModel(p0?.id ?? '', p0?.name ?? '', p0?.image ?? '')
    );

    return resSet.toList();

  }


}
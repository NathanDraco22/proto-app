import 'package:ferry/ferry.dart';
import 'package:ferry/typed_links.dart';
import 'package:ferry_hive_store/ferry_hive_store.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:proto_app/__generated__/schema-utf8.schema.gql.dart';
import 'package:proto_app/modules/rick_and_morty_gql/gql/__generated__/all_char_schema.data.gql.dart';

import 'package:proto_app/modules/rick_and_morty_gql/gql/__generated__/all_char_schema.req.gql.dart';

typedef GQLClient = Client;

class GQLService {


  late GQLClient _gqlClient;

  GQLService();

  Future<void> initGQLClient() async {
    Hive.init("hive_data");
    final box = await Hive.openBox("graphql");
    final store = HiveStore(box);
    final cache = Cache(store: store, possibleTypes: possibleTypesMap);
    final link = HttpLink('https://rickandmortyapi.com/graphql');
    final client = Client(link: link, cache: cache);
    _gqlClient= client;
  }

  Future<GAllCharactersData_characters?> fetch()async {
    final opRequest = GAllCharactersReq((b) => b.vars.page = 1,);
    final stream = _gqlClient.request(opRequest);
    final gqlModel =  await stream.first;
    return gqlModel.data?.characters;
  }

}
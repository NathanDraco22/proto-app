import 'package:flutter/material.dart';
import 'package:proto_app/modules/rick_and_morty_gql/repository/character_repository.dart';
import 'package:proto_app/modules/rick_and_morty_gql/services/graphql_services.dart';
import 'package:proto_app/modules/rick_and_morty_gql/view/detail_screen.dart';
import 'package:provider/provider.dart';

import '../provider/character_screen_provider.dart';

class CharactersScreen extends StatelessWidget {
  const CharactersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final service = GQLService();
    final repo = CharacterRepository(service);
    return FutureBuilder(
      future: service.initGQLClient(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState != ConnectionState.done){
          return const Center(child: CircularProgressIndicator(),);
        }
        return ChangeNotifierProvider(
          create: (context) => CharacterScreenProvider(repo),
          child: Scaffold(
            appBar: AppBar(title: const Text("Rick and Morty GQL Api")),
            body: const Content(),
          )
        );
      },
    );
  }
}

class Content extends StatelessWidget {
  const Content({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Future(()=>context.read<CharacterScreenProvider>().getCharacters());
    return Consumer<CharacterScreenProvider>(builder: (context, value, child){
      final characterModels = value.characters;
      return GridView.builder(
        padding: const EdgeInsets.all(4),
        itemCount: characterModels.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          crossAxisCount: 3
        ), 
        itemBuilder: (context, index){
          final character = characterModels[index];
          return Hero(
            tag: character.id,
            child: Material(
              color: Colors.transparent,
              child: Ink.image(
                image: NetworkImage(character.image ?? 
                  'https://static.vecteezy.com/system/resources/previews/005/337/799/original/icon-image-not-found-free-vector.jpg'),
                child: InkWell(
                  hoverColor: Colors.yellow.withAlpha(35),
                  splashColor: Colors.blue.withAlpha(50),
                  onTap: () {
                    Navigator.push(context, DetailAlertCustom(
                      (context) => AlertDialog(
                        title: Text(character.name),
                        content: Hero(
                          tag: character.id,
                          child: Image(
                            image: NetworkImage(character.image ?? 
                            'https://static.vecteezy.com/system/resources/previews/005/337/799/original/icon-image-not-found-free-vector.jpg'),
                          ),
                        ) ,
                      ),
                    ));
                  },
                ),
              ),
            ),
          );
        }
      );
    });
  }
}

//  Image.network(
//               character.image ?? 
//               'https://static.vecteezy.com/system/resources/previews/005/337/799/original/icon-image-not-found-free-vector.jpg'
//             ),
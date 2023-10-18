import 'package:go_router/go_router.dart';
import 'package:proto_app/modules/modules_screens.dart';

class AppRouter {

  static GoRouter routes = GoRouter(
    routes: [

      GoRoute(
        path: '/',
        name: 'home',
        builder: (context, state) => const HomeScreen(),
        routes: [

          GoRoute(
            path: 'coincap',
            name: 'coincap',
            builder: (context, state) => const CoinScreen(),
          ),

          GoRoute(
            path: 'rick-gql',
            name: 'rick-gql',
            builder: (context, state) => const CharactersScreen(),
          ),


        ]
      )


    ]
  );




}






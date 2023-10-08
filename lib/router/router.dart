import 'package:go_router/go_router.dart';
import 'package:proto_app/modules/coin_cap_tracker/view/coin_screen.dart';

import 'package:proto_app/modules/home/home_screen.dart';class AppRouter {

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
          )

        ]
      )


    ]
  );




}






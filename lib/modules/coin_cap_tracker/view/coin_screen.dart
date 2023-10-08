import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../coin_bloc/coin_bloc.dart';
import '../repository/coin_repository.dart';
import '../services/websocket_service.dart';

import 'widgets.dart';

class CoinScreen extends StatelessWidget {
  const CoinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CoinBloc(
        CoinRepository(WebSocketServices())
      ),
      child: const Scaffold(
          appBar: CustomAppBar(),
          body: BodyWidget(),
        ),
    );
  }
}

class BodyWidget extends StatelessWidget {
  const BodyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 400,
        height: 400,
        child: BlocBuilder<CoinBloc, CoinState>(
          builder: (context, state) {
            (state as CoinPurseState);
            
            final coinList = [
              state.coinPurse.bitcoin,
              state.coinPurse.ethereum,
              state.coinPurse.litecoin,
              state.coinPurse.dogecoin,
            ];

            return GridView(
                  padding: const EdgeInsets.all(16),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8.0,
                    mainAxisSpacing: 8.0
                  ),
                  children: coinList.map(
                    (e) => CoinGridTile(coinModel: e,)
                  ).toList()
                );
          },
        ),
      )
    );
  }
}




import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proto_app/modules/coin_cap_tracker/coin_bloc/coin_bloc.dart';
import 'package:proto_app/modules/coin_cap_tracker/repository/coin_repository.dart';
import 'package:proto_app/modules/coin_cap_tracker/services/websocket_service.dart';


class CoinScreen extends StatelessWidget {
  const CoinScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final coinsURL = [
      'https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579',
      'https://assets.coingecko.com/coins/images/279/large/ethereum.png?1595348880',
      'https://assets.coingecko.com/coins/images/2/large/litecoin.png?1547033580',
      'https://assets.coingecko.com/coins/images/5/large/dogecoin.png?1547792256'
    ];

    return BlocProvider(
      create: (context) => CoinBloc(
        CoinRepository(WebSocketServices())
      ),
      child: Scaffold(
          appBar: AppBar(title: const Text("CoinCap WebSocket"),),
          body: BodyWidget(coinsURL: coinsURL),
        ),
    );
  }
}

class BodyWidget extends StatelessWidget {
  const BodyWidget({
    super.key,
    required this.coinsURL,
  });

  final List<String> coinsURL;

  @override
  Widget build(BuildContext context) {
    Future(() => context.read<CoinBloc>().add(TurnOnCointEvent()),);
    return Center(
      child: SizedBox(
        width: 400,
        height: 400,
        child: BlocBuilder<CoinBloc, CoinState>(
          builder: (context, state) {
            (state as CoinPurseState);
            final coinPurse = state.coinPurse;
            return GridView(
                  padding: const EdgeInsets.all(16),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8.0,
                    mainAxisSpacing: 8.0
                  ),
                  children: [
                    CoinGridTile(
                      value: coinPurse.bitcoin,
                      imageURL: 'https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579', 
                    ),
                    CoinGridTile(
                      value: coinPurse.ethereum,
                      imageURL: 'https://assets.coingecko.com/coins/images/279/large/ethereum.png?1595348880', 
                    ),
                    CoinGridTile(
                      value: coinPurse.litecoin,
                      imageURL: 'https://assets.coingecko.com/coins/images/2/large/litecoin.png?1547033580', 
                    ),
                    CoinGridTile(
                      value: coinPurse.dogecoin,
                      imageURL: 'https://assets.coingecko.com/coins/images/5/large/dogecoin.png?1547792256', 
                    ),
                  ]
                );
          },
        ),
      )
    );
  }
}

class CoinGridTile extends StatelessWidget {
  const CoinGridTile({
    super.key,
    required this.imageURL,
    required this.value
  });

  final String imageURL;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [        
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 4),
            borderRadius: BorderRadius.circular(20)
          ),
        ),

        Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 90,
                height: 90,
                child: Image.network(imageURL),
              ),
              Text(value.toString() , style: const TextStyle(fontSize: 16),)
            ],
          )
      ],
    );
  }
}



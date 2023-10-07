import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:proto_app/modules/coin_cap_tracker/repository/coin_repository.dart';

part 'coin_event.dart';
part 'coin_state.dart';

class CoinBloc extends Bloc<CoinEvent, CoinState> {

  final CoinRepository coinRepository;

  CoinBloc(this.coinRepository) : super(CoinPurseState(CoinPurse.initial())) {
    on<TurnOnCointEvent>((event, emit)  async {
      await emit.onEach(
        coinRepository.getCoinPurseStream(), 
        onData: (data) {
          emit(CoinPurseState(data));
        },
      );
    });
  }
}

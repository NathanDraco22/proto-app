part of 'coin_bloc.dart';

@immutable
sealed class CoinState {}

final class CoinPurseState extends CoinState {
  final CoinPurse coinPurse;
  CoinPurseState(this.coinPurse);
}



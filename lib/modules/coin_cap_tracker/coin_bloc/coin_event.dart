part of 'coin_bloc.dart';

@immutable
sealed class CoinEvent {}

final class TurnOnCointEvent extends CoinEvent{}
final class TurnOffCointEvent extends CoinEvent{}

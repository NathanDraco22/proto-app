import 'package:proto_app/modules/coin_cap_tracker/services/websocket_service.dart';

class CoinPurse {
  final double bitcoin;
  final double ethereum;
  final double litecoin;
  final double dogecoin;

  CoinPurse.initial():
    bitcoin = 0.0 ,
    ethereum = 0.0 ,
    litecoin = 0.0 ,
    dogecoin = 0.0 ;

  CoinPurse.fromMap(Map<String, double> jsonMap):
  bitcoin  = jsonMap["bitcoin"]  ?? 0.0,
  ethereum = jsonMap["ethereum"] ?? 0.0,
  litecoin = jsonMap["litecoin"] ?? 0.0,
  dogecoin = jsonMap["dogecoin"] ?? 0.0;

}

class CoinRepository {

  final WebSocketServices webSocketServices;
  CoinRepository(this.webSocketServices);

  final Map<String,double> coinValues = {
    "bitcoin" : 0.0,
    "ethereum": 0.0,
    "litecoin": 0.0,
    "dogecoin": 0.0
  };

  Stream<CoinPurse> getCoinPurseStream(){
    final mapStream = webSocketServices.connect();
    return mapStream.map((event){
      for (var entry in event.entries) {
        coinValues[entry.key] = double.parse(entry.value);
      }
      return CoinPurse.fromMap(coinValues);
    });
  }





}

